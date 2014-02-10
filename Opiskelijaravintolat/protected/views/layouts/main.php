<?php /* @var $this Controller */ ?>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content="en" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
    <?php Yii::app()->clientScript->registerCoreScript('jquery'); ?>
    <?php Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/scripts/map.js',CClientScript::POS_END); ?>
    <?php $cs = Yii::app()->clientScript;
          $cs->registerCoreScript('jquery.ui');
          $cs->registerCssFile($cs->getCoreScriptUrl(). '/jui/css/base/jquery-ui.css');  ?>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />
	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body>

<div class="container" id="page">


	<?php echo $content; ?>


</div><!-- page -->

</body>
</html>
