<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<div id="mapContainer">
</div>
<div id="menuDialog" title="Menu"></div>
<div id="editDialog">
<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
<div id="notExists"><br/><br/>Jos kyseistä ravintolaa ei ole enää olemassa<br/><a href="javascript:void(0)" onClick="removeRestaurant()" title="Ehdota poistoa"><span id="rem" class="ui-icon ui-icon-close"></span>Ehdota poistoa</a>
</div></div>
<div id="addDialog"><?php echo $this->renderPartial('_form', array('model'=>$model)); ?></div>
<div id="responseDialog"></div>
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
<div id="addNew"><a href="javascript:void(0)" onClick="addRestaurant()" title="Lisää ravintola"><span class="ui-icon ui-icon-plus"></span></a></div>
<script type="text/javascript" charset="UTF-8" src="http://js.cit.api.here.com/se/2.5.3/jsl.js?with=all"></script>
<script type="text/javascript">

    var ravintolat = [];
    <?php $js_array = json_encode($restaurants);
    echo "ravintolat = ". $js_array . ";\n";
    ?>
</script>
