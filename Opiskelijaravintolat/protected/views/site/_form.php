<div class="form">
 
<?php $form=$this->beginWidget('CActiveForm', array(
    'id'=>'edit-restaurant-form',
    'enableAjaxValidation'=>true,
)); ?>
 
 
    <?php echo $form->errorSummary($model); ?>
    
    <div id="hiddenId"></div>
    <div class="row">
        <?php echo $form->labelEx($model,'nimi:'); ?>
        <?php echo $form->textField($model,'muutos_nimi'); ?>
        <?php echo $form->error($model,'muutos_nimi'); ?>
    </div>
    <div class="row">
        <?php echo $form->labelEx($model,'osoite:'); ?>
        <?php echo $form->textField($model,'muutos_osoite'); ?>
        <?php echo $form->error($model,'muutos_osoite'); ?>
    </div>
    <div class="row">
        <?php echo $form->labelEx($model,'kunta:'); ?>
        <?php echo $form->textField($model,'muutos_kunta'); ?>
        <?php echo $form->error($model,'muutos_kunta'); ?>
    </div>
    <div class="row">
        <?php echo $form->labelEx($model,'webosoite / rss:'); ?>
        <?php echo $form->textField($model,'muutos_www'); ?>
        <?php echo $form->error($model,'muutos_www'); ?>
    </div>
 
 
    <div class="row buttons">
        <?php echo CHtml::submitButton('Ehdota', array('title' => 'Ehdota muutoksia',)); ?> 
    </div>
 
<?php $this->endWidget(); ?>
 
</div>