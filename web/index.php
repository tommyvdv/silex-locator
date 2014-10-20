<?php

// constants
define( 'PATH_ROOT', dirname( __DIR__ ) );
//define( 'PATH_CACHE', PATH_ROOT . '/cache' );
define( 'PATH_LOCALE', PATH_ROOT . '/src/locale' );
//define( 'PATH_LOG', PATH_ROOT . '/log' );
//define( 'PATH_PUBLIC', PATH_ROOT . '/public' );
define( 'PATH_SRC', PATH_ROOT . '/src' );
define( 'PATH_APP', PATH_ROOT . '/app' );
define( 'PATH_VENDOR', PATH_ROOT . '/vendor' );
define( 'PATH_VIEWS', PATH_SRC . '/core/views' );

require_once PATH_VENDOR . '/autoload.php';

$app = new Silex\Application();

require PATH_APP.'/config.php';
require PATH_APP.'/app.php';
require PATH_APP.'/controllers.php';

$app->run();
