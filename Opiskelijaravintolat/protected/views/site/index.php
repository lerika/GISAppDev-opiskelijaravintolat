<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<div>
<?php 
    $array = $restaddr;
    $xvar = $array['xkoord'];
    $yvar = $array['ykoord'];
?>
</div>

	<div id="mapContainer"></div>
		<div id="button">
			<input type="button" value="Etsi reitti" onclick="button()">
		</div>
        <script type="text/javascript" charset="UTF-8" src="http://js.cit.api.here.com/se/2.5.3/jsl.js?with=all"></script>
		<script type="text/javascript" id="exampleJsSource">

nokia.Settings.set("app_id", "pDOGtkxwxdAkuQCiL7e4"); 
nokia.Settings.set("app_code", "cyPj3vIrgjsZy9sgWqga-g");
// Use staging environment (remove the line for production environment)
var Location = new nokia.maps.geo.Coordinate(0, 0);

// Get the DOM node to which we will append the map
var mapContainer = document.getElementById("mapContainer");
// Create a map inside the map container DOM node
var map = new nokia.maps.map.Display(mapContainer, {
	// Initial center and zoom level of the map
	center: [60.1808, 24.9375],
	zoomLevel: 10,
	components: [
		// We add the behavior component to allow panning / zooming of the map
		new nokia.maps.map.component.Behavior()
	]
});

var router = new nokia.maps.routing.Manager();


/* The positioning manager is only available if the browser used supports
 * W3C geolocation API
 */
if (nokia.maps.positioning.Manager) {
	var positioning = new nokia.maps.positioning.Manager();
	// Trigger the load of data, after the map emmits the "displayready" event
	map.addListener("displayready", function () {
		// Gets the current position, if available the first given callback function is executed else the second
		positioning.getCurrentPosition(
			// If a position is provided by W3C geolocation API of the browser
			function (position) {
				var coords = position.coords, // we retrieve the longitude/latitude from position
					marker = new nokia.maps.map.StandardMarker(coords), // creates a marker
					/* Create a circle map object  on the  geographical coordinates of
					 * provided position with a radius in meters of the accuracy of the position
					 */
					accuracyCircle = new nokia.maps.map.Circle(coords, coords.accuracy);
				
				// Add the circle and marker to the map's object collection so they will be rendered onto the map.
				map.objects.addAll([accuracyCircle, marker]);
				Location = position.coords;
				/* This method zooms the map to ensure that the bounding box calculated from the size of the circle
				 * shape is visible in its entirety in map's viewport. 
				 */
				map.zoomTo(accuracyCircle.getBoundingBox(), false, "default");
			}, 
			// Something went wrong we wee unable to retrieve the GPS location
			function (error) {
				var errorMsg = "Location could not be determined: ";
				
				// We determine what caused the error and generate error message
				if (error.code == 1) errorMsg += "PERMISSION_DENIED";
				else if (error.code == 2) errorMsg += "POSITION_UNAVAILABLE";
				else if (error.code == 3) errorMsg += "TIMEOUT";
				else errorMsg += "UNKNOWN_ERROR";
					
					// Throw an alert with error message
					alert(errorMsg);
			}
		);
	});
}

var onRouteCalculated = function (observedRouter, key, value) {
		if (value == "finished") {
			var routes = observedRouter.getRoutes();
			
			//create the default map representation of a route
			var mapRoute = new nokia.maps.routing.component.RouteResultSet(routes[0]).container;
			map.objects.add(mapRoute);
			
			//Zoom to the bounding box of the route
			map.zoomTo(mapRoute.getBoundingBox(), false, "default");
		} else if (value == "failed") {
			alert("The routing request failed.");
		}
	};

router.addObserver("state", onRouteCalculated);



var modes = [{
	type: "shortest", 
	transportModes: ["pedestrian"],
	options: "avoidTollroad",
	trafficMode: "default"
}];

function button()
{
	var waypoints = new nokia.maps.routing.WaypointParameterList();
    var x = <?php echo $xvar; ?>;
    var y = <?php echo $yvar; ?>;
	waypoints.addCoordinate(Location);
	waypoints.addCoordinate(new nokia.maps.geo.Coordinate(y,x));
	router.calculateRoute(waypoints, modes);
};




		</script>


