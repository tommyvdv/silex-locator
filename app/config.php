<?php

$app['debug'] = true;

// tpl

// db
$app['db.options'] = array(
	'driver'	=> 'pdo_mysql',
	'host'		=> 'localhost',
	'dbname'	=> 'locator_local',
	'user'		=> 'root',
	'password'	=> 'root',
	'charset'	=> 'utf8'
);