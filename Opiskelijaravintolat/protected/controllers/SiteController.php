<?php

class SiteController extends Controller
{
	/**
	 * Declares class-based actions.
	 */
	public function actions()
	{
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'CCaptchaAction',
				'backColor'=>0xFFFFFF,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
			'page'=>array(
				'class'=>'CViewAction',
			),
		);
	}

	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
        $rest = Yii::app()->db->createCommand()
        ->select('id, st_x(geometria) as xkoord, st_y(geometria) as ykoord')
        ->from('ravintolat u')
        ->queryAll();
        
        
       
		$this->render('index', array(
        'restaurants'=>$rest,
        ));
	}
    
    public function actionGetdata($id)
	{
        
        $restinfo = Yii::app()->db->createCommand()
        ->select('nimi, osoite, kunta, webosoite')
        ->from('ravintolat u')
        ->where('id=:id', array(':id'=>$id))
        ->queryRow();
                
        header('Content-type: application/json');

        echo json_encode($restinfo);

        Yii::app()->end();
	}

	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		}
	}


}