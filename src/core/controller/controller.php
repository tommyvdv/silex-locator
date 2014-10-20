<?php

namespace Controller;

use Model;

use Silex\Application;
use Silex\ControllerProviderInterface;
use Silex\Provider\FormServiceProvider;
use Symfony\Component\HttpKernel\HttpKernelInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\ParameterBag;

class Controller implements ControllerProviderInterface
{
	private $app;
	private $form;
	private $formData;
	private $records;

	public function connect( Application $app )
	{
		// controller
		$this->app = $app;
		$controller = $this->app['controllers_factory'];
		$controller->get("/", array( $this, 'index' ) )->bind('homepage');
		$controller->get("/locator", array( $this, 'locator' ) )->bind('locator');

		// prepare model
		$this->model = new Model\Model($this->app['db']);

		// register service
		$this->app->register(new FormServiceProvider());

		// return controller
		return $controller;
	}

	public function index()
	{
		// forward get to locator
		$subRequest = Request::create('/locator', 'GET');
		return $this->app->handle($subRequest, HttpKernelInterface::SUB_REQUEST);
	}

	public function locator()
	{
		$this->buildForm();
		$this->getData();

		return $this->app['twig']->render('locator/locator.tpl', array(
			'form' => $this->form->createView(),
			'data' => $this->records,
			'html' => $this->app['twig']->render('locator/partials/offices.tpl', array(
				'records' => $this->records
			))
		));
	}

	private function getData()
	{
		$this->formData = array();
		$this->records = $this->model->search();
	}

	private function buildForm()
	{
		$options = array('required' => false);
		$this->form = $this->app['form.factory']
			->createBuilder('form', $this->formData)
			->add('term', 'text', array_merge($options, array('label' => 'location')))
			->add('distance', 'integer', array_merge($options, array('data' => 10, 'label' => 'distance', 'attr' => array('min' => 1, 'max' => 50))))
			->add('is_open_on_weekends', 'checkbox', array_merge($options, array('label' => 'open on weekends')))
			->add('has_support_desk', 'checkbox', array_merge($options, array('label' => 'has a support desk')))
			->getForm();
	}
}