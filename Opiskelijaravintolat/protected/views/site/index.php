<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<div id="mapContainer">
</div>
<table id="btntbl">

	<tr>
		<td>
			<input type="button" value="Etsi lähin" onclick="button()" id="nappilahin"/>
		</td>
		<td>
			<input type="button" value="Seuraava" onclick="button2()" id="nappiseuraava"/>
		</td>
	</tr>
	<tr>
		<form name="userlocation" action="" onsubmit="button3(); return false" method="get">
		<td>
			<input type="text" name="pac-input" id="pac-input" placeholder="Oma sijainti" value=""/>
		</td>
		<td>
			<input type="button" value="Näytä sijainti" onclick="button3()" id="nappinayta"/> 
		</td>
		</form>
	</tr>

</table>
<script type="text/javascript" charset="UTF-8" src="http://js.cit.api.here.com/se/2.5.3/jsl.js?with=all"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
<script type="text/javascript">

    var ravintolat = [];
    <?php $js_array = json_encode($restaurants);
    echo "ravintolat = ". $js_array . ";\n";
    ?>
</script>
