<?php

namespace Controller;

use Model;

use Silex\Application;
use Silex\ControllerProviderInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\ParameterBag;

class Ajax implements ControllerProviderInterface
{
	private $app;
	private $model;
	private $records;
	private $geocoder;
	public function connect( Application $app )
	{
		$this->app = $app;
		$this->geocoder = $this->app['geocoder'];

		$controller = $this->app['controllers_factory'];
		$controller->post("/ajax/search", array( $this, 'search' ) )->bind('search');
		
		$this->app->before(function (Request $request) {
			if (0 === strpos($request->headers->get('Content-Type'), 'application/json')) {
				$data = json_decode($request->getContent(), true);
				$request->request->replace(is_array($data) ? $data : array());
			}
		});

		$this->model = new Model\Model($this->app['db']);

		return $controller;
	}

	public function search( Request $request )
	{
		$formData = $request->request->get('form');
		if(isset($formData['term'])) $formData = $this->enrichWithGeocode($formData);

		$this->records = $this->model->search($formData);

		$result = array(
			'data' => $this->records,
			'html' => $this->app['twig']->render('locator/partials/offices.tpl', array(
				'records' => $this->records,
				'ajax' => true
			))
		);

		return $this->app->json($result, 201);
	}

	private function enrichWithGeocode($data, $termKey = 'term')
	{
		$result = $this->geocoder->geocode($data[$termKey]);
		list($data['lat'], $data['lng']) = array($result->getLatitude(),$result->getLongitude());
		return $data;
	}
}