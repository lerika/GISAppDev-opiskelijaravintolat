
nokia.Settings.set("app_id", "pDOGtkxwxdAkuQCiL7e4"); 
nokia.Settings.set("app_code", "cyPj3vIrgjsZy9sgWqga-g");
// App-tiedot
var Location = new nokia.maps.geo.Coordinate(0, 0);
var userLocation = new nokia.maps.geo.Coordinate(0, 0);

//käyttäjän antaman paikan koordinaatit
var coordinates = [];

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

//Oman sijainnin marker
var SijaintiMarker = new nokia.maps.map.StandardMarker(map.center, {brush: "#FF0000"});  

// Reitinhaku
var router = new nokia.maps.routing.Manager();

document.getElementById("nappiseuraava").disabled = true;

//markkereille
var TOUCH = nokia.maps.dom.Page.browser.touch,
	CLICK = TOUCH ? "tap" : "click";

//Käyttäjän sijainti
if (nokia.maps.positioning.Manager) {
    var positioning = new nokia.maps.positioning.Manager();
    // Alkaa kun kartta ladattu
    map.addListener("displayready", function () {
        // Hakee sijainnin
        positioning.getCurrentPosition(
         
            function (position) {
                var coords = position.coords; // koordinaatit
                    SijaintiMarker = new nokia.maps.map.StandardMarker(coords, standardMarkerProps[1]); //marker
					
					map.objects.add(SijaintiMarker);
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

//Markkerin kartalle lisäys -funktio
function addMarkerToMap(x, y, id) 
{
	var id = id;
	var x = x;
	var y = y;
		
		var ravintolamarker = new nokia.maps.map.StandardMarker(
			[y,x],
			{
				$click : 'getInfo(myValue);',
				brush: {color: "#0000FF"}
			}
			)
		;

		ravintolamarker.addListener(CLICK, function(evt) {
			if (( evt.target.$href === undefined) == false){
				window.location = evt.target.$href; 
			}  else if (( evt.target.$click === undefined) == false){
				var onClickDo = new Function(evt.target.$click);
				window.myValue = id;
				onClickDo();
			}
		});
		
			map.objects.add(ravintolamarker);
};

//Markkereiden luonti -funktio
function markers()
{
	for (var i = 0; i < ravintolat.length; i++)
		{
		x_mark = parseFloat(ravintolat[i]["xkoord"]);
		y_mark = parseFloat(ravintolat[i]["ykoord"]);
		id_mark = parseFloat(ravintolat[i]["id"]);
		
		addMarkerToMap(x_mark, y_mark, id_mark);
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
	if (document.getElementById("searchbox-input").value=="")
	{
		startpoint = Location;
		lahin = [];
	}
	else
	{
        customSearchBox.search(); 
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
	x = parseFloat(lahin[indeksi].x);
	y = parseFloat(lahin[indeksi].y);
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
	if (document.getElementById("searchbox-input").value=="")
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
	x = parseFloat(lahin[indeksi].x);
	y = parseFloat(lahin[indeksi].y);
	var waypoints = new nokia.maps.routing.WaypointParameterList();
	waypoints.clear();
    waypoints.addCoordinate(startpoint);
    waypoints.addCoordinate(new nokia.maps.geo.Coordinate(y,x));
    router.calculateRoute(waypoints, modes);
    
    var id1 = lahin[indeksi].id;
    getInfo(id1);
    
};


function button3()
{
	
	map.objects.clear();
	markers();
    
	//luodaan  ravintolat markkerit uudestaan hävitettyjen tilalle
	if (document.getElementById("searchbox-input").value!=="")
	{
		
		customSearchBox.search();

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
	if (document.getElementById("searchbox-input").value=="")
	{
		startpoint = Location;
	}
	else
	{
		startpoint = userLocation;
	}
	var Location2 = new nokia.maps.geo.Coordinate(y,x); 
	var z = Location2.distance(startpoint);

	lahin.push(new ravintola(id, z, x, y));
	

};
//ravintola objekti
function ravintola(id, etaisyys,x,y)
	{
		this.id = id;
		this.etaisyys = etaisyys;
        this.x = x;
        this.y = y;
	}

	  
    
var customSearchBox = new nokia.places.widgets.SearchBox({
			targetNode: "customSearchBox",
			template: "customSearchBox",
			searchCenter: function () {
				return {
					latitude: 60.1808,
					longitude: 24.9375
				};
			},
			onResults: function (data) {
                if(SijaintiMarker) {
                    map.objects.remove(SijaintiMarker);
                }
				locations = data.results ? data.results.items : [data.location];
				coordinates = [locations[0].position.latitude, locations[0].position.longitude];
				userLocation = new nokia.maps.geo.Coordinate(coordinates[0], coordinates[1]);
				map.setCenter(userLocation);
				SijaintiMarker = new nokia.maps.map.StandardMarker(map.center, {brush: "#FF0000"});
				map.setZoomLevel(15);
				map.objects.add(SijaintiMarker);
			}
});    


//infobubblen luonti -funktio
function infobubbles(nim, osoit, kunt, webosoit, rss, x_bub, y_bub)
{
    var x = parseFloat(x_bub)
	var y = parseFloat(y_bub)
	var coord = new nokia.maps.geo.Coordinate (y, x);
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
	bubble = infoBubbles.openBubble(htmlStr, coord, "", true);  
};
    
function getInfo(id1) {
// fetches restaurants name, address and website from the database
    $.ajax({
      url: "index.php/site/getdata/" + id1,
      contentType: "application/json; charset=utf-8",
      dataType: "json",
      success: function(response, status){
           infobubbles(response["nimi"], response["osoite"], response["kunta"], response["webosoite"], response["rss"], response["xkoord"], response["ykoord"]);	
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
    //weekday = 5;
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
