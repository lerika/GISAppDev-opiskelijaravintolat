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
<script type="text/javascript">
    var x = <?php echo $xvar; ?>;
    var y = <?php echo $yvar; ?>;</script>
