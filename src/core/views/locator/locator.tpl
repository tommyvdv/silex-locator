{% extends 'layout.tpl' %}

{% set active = 'locator' %}

{% block content %}
	<div class="row">
		<div class="jumbotron row">
			<div class="col-md-2">
				<div class="icon"></div>
			</div>
			<div class="col-md-10">
				<h1>Hi there</h1>
				<p>This is just a test called locator.</p>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12">
			<form id="locatorSearchForm" data-id="offices" class="form locator search" action="{{ path('search') }}" method="post">
				{{ form_widget(form) }}

				<p><button type="submit" class="btn btn-default">{{ 'Search'|trans }}</button></p>
			</form>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default no-padding">
				<div class="panel-heading">{{ 'Map'|trans }}</div>
				<div class="panel-body">
					<div id="js-map"></div>
				</div>
			</div>
		</div>
	</div>

	<div class="ajax data holder" data-id="offices">
		{{ html|raw }}
	</div>
{% endblock %}