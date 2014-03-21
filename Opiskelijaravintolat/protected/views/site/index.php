<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<div id="mapContainer">
</div>
<div id="menuDialog" title="Menu"></div>
<div id="editDialog" title="Ehdota korjausta">
<form>
Nimi: <input type="text" name="firstname"><br/>
Osoite: <input type="text" name="lastname"><br/>
Kunta: <input type="text" name="lastname"><br/>
www-osoite tai rss: <input type="text" name="lastname"><br/>
<input type="submit" value="Ehdota"><br/><br/>
Jos kyseistä ravintolaa ei ole enää olemassa<br/><a href="javascript:void(0)" onClick="removeRestaurant()" title="Ehdota poistoa"><span id="rem" class="ui-icon ui-icon-close"></span>Ehdota poistoa</a>
</form></div>
<table id="btntbl">

	<tr>
		<td>
			<input type="button" value="Etsi lähin" onclick="button()" id="nappilahin" title="Etsi lähin ravintola" />
		</td>
		<td>
			<input type="button" value="Seuraava" onclick="button2()" id="nappiseuraava" title="Etsi seuraavaksi lähin ravintola" />
		</td>
	</tr>
	<tr>
		<td class="lighttd">
			<div id="customSearchBox" class="main-search">
				<div module="SearchBox">
					<input id="searchbox-input" rel="searchbox-input" class="main-search" type="text" placeholder="Oma sijainti" value=""/>
					<div rel="searchbox-list" class="search-list"></div>
				</div>
			</div>
		</td>
		<td>
			<input type="button" value="Näytä sijainti" onclick="button3()" id="nappinayta" title="Näytä sijainti kartalla" /> 
		</td>
	</tr>

</table>
<script type="text/javascript" charset="UTF-8" src="http://js.cit.api.here.com/se/2.5.3/jsl.js?with=all"></script>
<script type="text/javascript">

    var ravintolat = [];
    <?php $js_array = json_encode($restaurants);
    echo "ravintolat = ". $js_array . ";\n";
    ?>
</script>
