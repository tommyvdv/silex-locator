<?php

use Symfony\Component\Form\FormError;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Validator\Constraints as Assert;

// locator controllers
$app->mount('/', new Controller\Controller());
$app->mount('/', new Controller\Ajax());

$app->error(function (\Exception $e, $code) use ($app) {
	if ($app['debug']) {
		return;
	}

	switch ($code) {
		case 404:
			$message = 'Can not seem to find what you are looking for.';
			break;
		default:
			$message = 'Something went pear shape, terribly sorry.';
	}

	return new Response($message, $code);
});