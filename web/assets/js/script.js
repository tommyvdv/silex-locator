(function($) {
	$(function(){
		$(locator.init());
	});
})(jQuery);

var locator = 
{
	mapElement: false,
	mapOptions: false,
	map: false,
	markers: false,
	mapMarkers: false,
	mapBounds: false,
	form: false,
	fields: false,
	container: false,
	init: function()
	{
		locator.setProperties();
		locator.initMap();
		locator.setActions();
	},
	setProperties: function()
	{
		locator.container = $('.ajax.data.holder[data-id="offices"]');
		locator.form = $('.form.locator.search[data-id="offices"]');
		locator.fields = locator.form;
		locator.mapElement = $('.js-map');
		locator.markers = jsData;
	},
	setMapOptions: function()
	{
		locator.mapOptions = {
			// no options yet
		};
	},
	initMap: function()
	{
		locator.setMapOptions();
		locator.map = new google.maps.Map(
			document.getElementById('js-map'),
			locator.mapOptions
		);
		locator.refreshMarkers();
	},
	refreshMarkers: function()
	{
		locator.setMarkers();
		locator.refreshBounds();
	},
	setMarkers: function()
	{
		if(locator.markers)
		{
			locator.deleteAllMarkers();
			locator.mapBounds = new google.maps.LatLngBounds();
			$(locator.markers).each(locator.addMarker);
		}
	},
	deleteAllMarkers: function()
	{
		$(locator.mapMarkers).each(function(i,el){
			el.setMap(null);
		});
		locator.mapMarkers = [];
	},
	refreshBounds: function()
	{
		locator.map.fitBounds(locator.mapBounds);
		//locator.zoomOut(1);
	},
	zoomOut: function(level)
	{
		var zoom = locator.map.getZoom();
		if(zoom !== undefined)
			locator.map.setZoom(zoom - level);
	},
	addMarker: function(i, el)
	{
		var latLng = new google.maps.LatLng(el.latitude,el.longitude);
		locator.mapMarkers.push(
			new google.maps.Marker({
				position: latLng,
				map: locator.map,
				title: "#" + el.id
			})
		);
		locator.mapBounds.extend(latLng);
	},
	setActions: function()
	{
		locator.form.submit(function(e){
			e.preventDefault();
			locator.post($(this), locator.parsePostResult);
			return false;
		});
	},
	post: function($form, callback)
	{
		var values = {};
		$.each( $form.serializeArray(), function(i, field) {
			values[field.name] = field.value;
		});
		locator.disableInput();
		$.ajax({
			type: 'POST',
			url: '/ajax/search',
			data: values,
			success: function( data ) {
				locator.disableInput(false);
				callback(data);
			},
			error: function (xhr, ajaxOptions, thrownError) {
				locator.disableInput(false);
				console.log(xhr.status);
				console.log(thrownError);
			}
		});
	},
	disableInput: function(inverse)
	{
		var inverse = inverse !== undefined ? inverse : true;
		locator.form.find('input, button').prop('disabled', inverse);
	},
	parsePostResult: function(data)
	{
		locator.markers = data.data;
		locator.refreshMarkers();
		locator.container.html(data.html);
	}
}