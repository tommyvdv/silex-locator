{% if ajax is defined %}
	<div class="
		alert
		{% if records|length > 0 %} alert-success {% else %} alert-error {% endif %}
		col-md-12
	" role="alert">
		<strong>{{ records|length }}</strong> {% if records|length > 1 %} {{ 'results found'|trans }} {% else %} {{ 'result found'|trans }} {% endif %}
	</div>
{% endif %}

<div class="row">
	{% for record in records %}
		<div class="col-md-3">
			<div class="panel panel-default">
				<div class="panel-heading">#{{record.id}}</div>
				<div class="panel-body">
					<p>{{record.street}}<br/>
					{{record.city}}</p>
				</div>
			</div>
		</div>
	{% endfor %}
</div>