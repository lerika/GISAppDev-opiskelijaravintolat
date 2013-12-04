<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<div id="mapContainer"></div>
<div id="button">
	<input type="button" value="Etsi lähin" onclick="button()">
</div>
<div id="button2">
	<input type="button" value="Seuraava" onclick="button2()">
</div>
<div id="form">
<form name="userlocation" action="" method="get">
<input type="text" name="inputbox" id="locationform" placeholder="Oma sijainti" value=""><p>
<input type="button" value="Näytä sijainti" onclick="button3()"> 
</form>

</div>
<script type="text/javascript" charset="UTF-8" src="http://js.cit.api.here.com/se/2.5.3/jsl.js?with=all"></script>
<script type="text/javascript">

    var ravintolat = [];
    <?php $js_array = json_encode($restaurants);
    echo "ravintolat = ". $js_array . ";\n";
    ?>
</script>
