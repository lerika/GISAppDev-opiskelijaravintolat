
nokia.Settings.set("app_id", "pDOGtkxwxdAkuQCiL7e4"); 
nokia.Settings.set("app_code", "cyPj3vIrgjsZy9sgWqga-g");
// App-tiedot
var Location = new nokia.maps.geo.Coordinate(0, 0);

// DOM node kartalle
var mapContainer = document.getElementById("mapContainer");
// InfoBubble
var infoBubbles = new nokia.maps.map.component.InfoBubbles(),
	marker;
// Kartan luonti

var standardMarkerProps = [
	null,
	{
		brush: {
			color:"FF0000"
		}
	}
]
var map = new nokia.maps.map.Display(mapContainer, {
    // Alkusijanti ja zoom level
    center: [60.1808, 24.9375],
    minZoomLevel: 9,
	maxZoomLevel: 17,
	zoomLevel: 9,
    components: [
        //infoBubble
		infoBubbles,
		// Zoom ja pan tools
		new nokia.maps.map.component.ZoomBar(),
        new nokia.maps.map.component.Behavior()
    ]
});

// Reitinhaku
var router = new nokia.maps.routing.Manager();

document.getElementById("nappiseuraava").disabled = true;


//Käyttäjän sijainti
if (nokia.maps.positioning.Manager) {
    var positioning = new nokia.maps.positioning.Manager();
    // Alkaa kun kartta ladattu
    map.addListener("displayready", function () {
        // Hakee sijainnin
        positioning.getCurrentPosition(
         
            function (position) {
                var coords = position.coords, // koordinaatit
                    alkusijainti = new nokia.maps.map.StandardMarker(coords, standardMarkerProps[1]); //marker
					
					map.objects.add(alkusijainti);
					Location = position.coords;
					map.setCenter(coords);
					map.setZoomLevel(15);
					

            }, 
            // virheilmoitukset
            function (error) {
                var errorMsg = "Location could not be determined: ";
                
                
                if (error.code == 1) errorMsg += "PERMISSION_DENIED";
                else if (error.code == 2) errorMsg += "POSITION_UNAVAILABLE";
                else if (error.code == 3) errorMsg += "TIMEOUT";
                else errorMsg += "UNKNOWN_ERROR";
                    
                
                    alert(errorMsg);
            }
        );
    });
}
var mapRoute = 0; //reittimuuttuja jonka avulla muut funktiot voi tarkistaa onko olemassa olevia reittejä

var onRouteCalculated = function (observedRouter, key, value) {
        if (value == "finished") {
            var routes = observedRouter.getRoutes();
            //haetaan reitti
            
            mapRoute = new nokia.maps.routing.component.RouteResultSet(routes[0]).container;
            map.objects.add(mapRoute);
       
            map.zoomTo(mapRoute.getBoundingBox(), false, "default");
        } else if (value == "failed") {
            alert("Reitin haku epäonnistui. Yritä uudelleen");
        }
    };

router.addObserver("state", onRouteCalculated);

//reitin modet

var modes = [{
    type: "shortest", 
    transportModes: ["pedestrian"],
    options: "avoidTollroad",
    trafficMode: "default"
}];


//Markkereiden luonti -funktio
function markers()
{
	for (var i = 0; i < ravintolat.length; i++)
		{
		x = parseFloat(ravintolat[i]["xkoord"]);
		y = parseFloat(ravintolat[i]["ykoord"]);

		var ravintolamarker = new nokia.maps.map.StandardMarker([y,x]);
		ravintolamarker.brush.color = "#0000FF";
		map.objects.add(ravintolamarker);
		}
};
//markkerit luodaan
markers();
//tiedetään mihin lahin taulun ravintolaista haetaan reitti
var indeksi = 0;



function button() //etsii lähimmän ravintolan
{
	
	var startpoint;
	//tarkistetaan käytetäänkö geolocation vai käyttäjän antamaa sijaintia
	if (document.getElementById("pac-input").value=="")
	{
		startpoint = Location;
		lahin = [];
	}
	else
	{
		startpoint = userLocation;
		lahin = [];
	}
	//poistetaan vanha reitti jos sellainen on
	if (mapRoute !==0)
	{
		mapRoute.destroy();
	}
	
	//luodaan taulu jossa etäisyydet ravintoloihin
	for (var i = 0; i < ravintolat.length; i++)
		{
		lista(ravintolat[i]["id"], parseFloat(ravintolat[i]["xkoord"]), parseFloat(ravintolat[i]["ykoord"]));
		}
	//järjestetään taulu että lähin on ensimmäinen
	lahin.sort(function(a,b)
	{
		return a.etaisyys - b.etaisyys;
	})
	//valitaan lähin ravintola
	indeksi = 0;
	x = parseFloat(ravintolat[lahin[indeksi].id-1]["xkoord"]);
	y = parseFloat(ravintolat[lahin[indeksi].id-1]["ykoord"]);
	var waypoints = new nokia.maps.routing.WaypointParameterList();
    waypoints.addCoordinate(startpoint);
    waypoints.addCoordinate(new nokia.maps.geo.Coordinate(y,x));
    router.calculateRoute(waypoints, modes);
	document.getElementById("nappiseuraava").disabled = false;
    
    var id1 = lahin[indeksi].id;
    getInfo(id1);
    
};

function button2() //etsii seuraavaksi lähimmän ravintolan
{
	var startpoint;
	//tarkistetaan käytetäänkö geolocation vai käyttäjän antamaa sijaintia
	if (document.getElementById("pac-input").value=="")
	{
		startpoint = Location;
	}
	else
	{
		startpoint = userLocation;
	}
	
	//poistetaan vanha reitti
	
	mapRoute.destroy();
	//valitaan seuraavana taulussa oleva ravintola, käydään läpi  2km sisällä olevat ja palataan ensimmmäiseen
	if (lahin[indeksi].etaisyys < 2000)
	{
	indeksi = indeksi+1;
	}
	if (lahin[indeksi].etaisyys > 2000)
	{
		indeksi = 0;
	}
	x = parseFloat(ravintolat[lahin[indeksi].id-1]["xkoord"]);
	y = parseFloat(ravintolat[lahin[indeksi].id-1]["ykoord"]);
	var waypoints = new nokia.maps.routing.WaypointParameterList();
	waypoints.clear();
    waypoints.addCoordinate(startpoint);
    waypoints.addCoordinate(new nokia.maps.geo.Coordinate(y,x));
    router.calculateRoute(waypoints, modes);
    
    var id1 = lahin[indeksi].id;
    getInfo(id1);
    
};

var userLocation;

function button3()
{
	
	map.objects.clear();
	markers();
	//luodaan  ravintolat markkerit uudestaan hävitettyjen tilalle
	if (document.getElementById("pac-input").value!=="")
	{
		
		getCoordinates(document.getElementById("pac-input").value);

	}
	else
	{
		map.setCenter(Location);
		var Marker = new nokia.maps.map.StandardMarker(map.center, standardMarkerProps[1]);
		
		map.setZoomLevel(15);
		map.objects.add(Marker);
	}
	document.getElementById("nappiseuraava").disabled = true;	
	
};
//taulu etäisyyksille ravintoloihin
var lahin = [];

function lista(id, x, y) //laskee etäisyydet ravintoloihin
{
	var startpoint;
	if (document.getElementById("pac-input").value=="")
	{
		startpoint = Location;
	}
	else
	{
		startpoint = userLocation;
	}
	var Location2 = new nokia.maps.geo.Coordinate(y,x); 
	var z = Location2.distance(startpoint);

	lahin.push(new ravintola(id, z));
	

};
//ravintola objekti
function ravintola(id, etaisyys)
	{
		this.id = id;
		this.etaisyys = etaisyys;
	}
//käyttäjän antaman paikan koordinaatit
var coordinates = [];
	
var input = /** @type {HTMLInputElement} */(
      document.getElementById('pac-input'));

var autocomplete = new google.maps.places.Autocomplete(input, { bounds: new google.maps.LatLngBounds(
        new google.maps.LatLng(59.778522,19.460448),
        new google.maps.LatLng(70.170201,30.139159))}
    );
  autocomplete.bindTo('bounds', map);
  
google.maps.event.addListener(autocomplete, 'place_changed', function () {getCoordinates(document.getElementById("pac-input").value)});

function getCoordinates(location) 
	{
			var place = autocomplete.getPlace();
			if(!place.geometry) {
				firstResult = $(".pac-container .pac-item:first").text();
				var geocoder = new google.maps.Geocoder();
				geocoder.geocode({"address":firstResult }, function(results, status) {
					if (status == google.maps.GeocoderStatus.OK) {
						userLocation = new nokia.maps.geo.Coordinate(results[0].geometry.location.lat(), results[0].geometry.location.lng());
						map.setCenter(userLocation);
						var SijaintiMarker = new nokia.maps.map.Marker(map.center, {brush: "#FF0000"});
						map.setZoomLevel(15);
						map.objects.add(SijaintiMarker);
					}
				});
			} else{
				coordinates = [place.geometry.location.lat(), place.geometry.location.lng()];
				userLocation = new nokia.maps.geo.Coordinate(coordinates[0], coordinates[1]);
				map.setCenter(userLocation);
				var SijaintiMarker = new nokia.maps.map.Marker(map.center, {brush: "#FF0000"});
				map.setZoomLevel(15);
				map.objects.add(SijaintiMarker);
			}
	};

//infobubblen luonti -funktio
function infobubbles(nim, osoit, kunt, webosoit, rss)
{
    var linkki;
    if (rss == 1 || rss == 2) {
        var w = "'" + webosoit + "'"
        linkki = '"javascript:void(0)" onClick="getMenu('+ rss + ', ' + w + ')"';
    } else {
        linkki = '"' + webosoit + '" target="_blank"';
    }
	var bubbleUiElt = document.getElementById("bubble");
	htmlBubbleUiElt = document.getElementById("htmlBubble");
	htmlStr = '<div>' +
		'<p>' +
		'<h2>' +
		nim +
		'<br />' +
		'</h2>' +
		osoit +
		' ' +
		kunt + 
		'</p>' +
		'<p><a href=' +
		linkki + '>' +
		'RUOKALISTA</a></p></div>';
	bubble = infoBubbles.openBubble(htmlStr, [y, x], "", true);  
};
    
function getInfo(id1) {
// fetches restaurants name, address and website from the database
    $.ajax({
      url: "index.php/site/getdata/" + id1,
      contentType: "application/json; charset=utf-8",
      dataType: "json",
      success: function(response, status){
           infobubbles(response["nimi"], response["osoite"], response["kunta"], response["webosoite"], response["rss"]);	
      },
      error: function error(jqXHR, textStatus, errorThrown) {
            alert("Ravintolan tietojen haku epäonnistui.");
      }
    });

}

function getMenu(rss, www) {
// creates menu
    //get weekday
    var d = new Date();
    var weekday = d.getDay();
    //var www1 = encodeURIComponent(www);
    $.ajax({
      url: "index.php/site/getmenu?wday=" + weekday + "&rss=" + rss + "&wwwa=" + www,
      success: function(response, status){
            $("#menuDialog").dialog();
            $("#menuDialog").html(response);
          },
      error: function error(jqXHR, textStatus, errorThrown) {
            alert("Ravintolan menun muodostaminen epäonnistui.");
      }
    });

}
