<?php

//use Silex\Provider\FormServiceProvider;
//use Silex\Provider\HttpCacheServiceProvider;
//use Silex\Provider\MonologServiceProvider;
//use Silex\Provider\SecurityServiceProvider;
use Silex\Provider\SessionServiceProvider;
use Silex\Provider\TranslationServiceProvider;
use Silex\Provider\TwigServiceProvider;
use Silex\Provider\UrlGeneratorServiceProvider;
//use Silex\Provider\ValidatorServiceProvider;
//use SilexAssetic\AsseticExtension;
//use Symfony\Component\Security\Core\Encoder\PlaintextPasswordEncoder;
use Symfony\Component\Translation\Loader\YamlFileLoader;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\ParameterBag;
use Geocoder\Provider\GeocoderServiceProvider;
use Geocoder\Provider\GoogleMapsProvider;

//$app->register(new HttpCacheServiceProvider());
$app->register(new SessionServiceProvider());
//$app->register(new ValidatorServiceProvider());
//$app->register(new FormServiceProvider());
$app->register(new UrlGeneratorServiceProvider());
$app->register(new GeocoderServiceProvider());

// geodcoder def
$app['geocoder.provider'] = $app->share(function () use ($app) {
    return new GoogleMapsProvider($app['geocoder.adapter']);
});

// trans def
$app->register(new TranslationServiceProvider());
$app['translator'] = $app->share($app->extend('translator', function($translator, $app) {
	$translator->addLoader( 'yaml', new YamlFileLoader() );
	$translator->addResource( 'yaml', PATH_LOCALE . '/en.yml', 'en' );
	return $translator;
}));

// twig def
$app->register(new TwigServiceProvider(), array(
	'twig.path' => PATH_VIEWS,
	'twig.form.templates' => array(
		'form_div_layout.html.twig', 'locator/partials/fields.html.twig'
	)
));

$app->register(new Silex\Provider\DoctrineServiceProvider());

return $app;