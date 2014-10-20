<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>	<html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>	<html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>{{ 'Locator'|trans }}</title>

	{# Favicon and Apple touch icon #}
	<link rel="shortcut icon" href="/assets/icons/favicon.ico" />
	<link rel="apple-touch-icon" href="/assets/icons/apple-touch-icon.png" />

	{# Windows 8 tile #}
	<meta name="application-name" content="{{ 'Locator'|trans }}"/>
	<meta name="msapplication-TileColor" content="#d95642"/>
	<meta name="msapplication-TileImage" content="/assets/icons/tile.png"/>

	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCCodsXETZJjcojg4B8M7cKIU3yZMbMSic"></script>

	<meta name="description" content="">
	<meta name="author" content="">

	<meta name="viewport" content="width=device-width">

	<link rel="stylesheet" href="{{ app.request.basepath }}/assets/css/styles.css">
	<script type="text/javascript" src="{{ app.request.basepath }}/assets/js/libs/modernizr-2.5.3-respond-1.1.0.min.js"></script>

	{% if data is defined %}
	<script type="text/javascript">
		var jsData = {{ data|json_encode|raw }};
	</script>
	{% endif %}
</head>
<body role="document">

	{% set active = active|default(null) %}
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="{{ path('homepage') }}">{{ 'Locator'|trans }}</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li {% if 'homepage' == active %}class="active"{% endif %}><a href="{{ path('homepage') }}">Home</a></li>
					<li {% if 'locator' == active %}class="active"{% endif %}><a href="{{ path('locator') }}">Locator</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div>

	<div class="container theme-showcase" role="main">

		<div id="main" role="main" class="container">
			{% set alertTypeAvaillable = [ 'info', 'success', 'warning', 'error'] %}
			{% for alert in alertTypeAvaillable %}
				{% for message in app.session.getFlashBag.get(alert) %}
					<div class="alert alert-{{ alert }}" >
						<button class="close" data-dismiss="alert">×</button>
						{{ message|trans }}
					</div>
				{% endfor %}
			{% endfor %}
			{% block content %}
			{% endblock %}
		</div>
	</div>

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="{{ app.request.basepath }}/js/libs/jquery-1.7.2.min.js"><\/script>')</script>
	<script src="{{ app.request.basepath }}/assets/js/script.js"></script>
</body>
</html>