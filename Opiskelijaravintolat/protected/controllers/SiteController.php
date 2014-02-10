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
        ->select('nimi, osoite, kunta, webosoite, rss')
        ->from('ravintolat u')
        ->where('id=:id', array(':id'=>$id))
        ->queryRow();
                
        header('Content-type: application/json');

        echo json_encode($restinfo);

        Yii::app()->end();
	}
    
    public function actionGetmenu($wday, $rss, $wwwa)
	{
       
        $rawFeed = file_get_contents($wwwa);
        $xml = new SimpleXmlElement($rawFeed);
        
       
        $doc_new = new DOMDocument();
        
        if ($rss == 1) {
            $doc = new DOMDocument();
            
            $d = $xml->xpath('//item/description');
            
            $doc->loadHTML('<meta http-equiv="content-type" content="text/html; charset=utf-8">'.$d[0]);
            
            
            $xpath = new DOMXpath($doc);
            if ($wday == 1)
                $elements = $xpath->query("//*[contains(text(), 'Tiistai')]/preceding-sibling::*");
            else if ($wday == 2)
                $elements = $xpath->query("//*[following-sibling::*[contains(text(), 'Keskiviikko')] and preceding-sibling::*[contains(text(), 'Tiistai')]]");
            else if ($wday == 3)
                $elements = $xpath->query("//*[following-sibling::*[contains(text(), 'Torstai')] and preceding-sibling::*[contains(text(), 'Keskiviikko')]]");
            else if ($wday == 4)
                $elements = $xpath->query("//*[following-sibling::*[contains(text(), 'Perjantai')] and preceding-sibling::*[contains(text(), 'Torstai')]]");
            else if ($wday == 5)
                $elements = $xpath->query("//*[following-sibling::*[contains(text(), 'Lauantai')] and preceding-sibling::*[contains(text(), 'Perjantai')]]");
            else if ($wday == 6)
                $elements = $xpath->query("//*[preceding-sibling::*[contains(text(), 'Lauantai')]]");
            else {
                $node = $doc_new->createElement("div", "Ei ruokaa sunnuntaisin.");
                $doc_new->appendChild($node);
                echo $doc_new->saveHTML();
                Yii::app()->end();
            }
            
            foreach ($elements as $element) {
                $newnode = $doc_new->importNode( $element, true );
                $doc_new->appendChild($newnode);
            }
        } else {
            //
            if ($wday == 1)
                $d = $xml->xpath("//item[./*[contains(text(), 'Maanantai')] or ./*[contains(text(), 'maanantai')]]/description");
            else if ($wday == 2)
                $d = $xml->xpath("//item[./*[contains(text(), 'Tiistai')] or ./*[contains(text(), 'tiistai')]]/description");
            else if ($wday == 3)
                $d = $xml->xpath("//item[./*[contains(text(), 'Keskiviikko')] or ./*[contains(text(), 'keskiviikko')]]/description");
            else if ($wday == 4)
                $d = $xml->xpath("//item[./*[contains(text(), 'Torstai')] or ./*[contains(text(), 'torstai')]]/description");
            else if ($wday == 5)
                $d = $xml->xpath("//item[./*[contains(text(), 'Perjantai')] or ./*[contains(text(), 'perjantai')]]/description");
            else {
                $node = $doc_new->createElement("div", "Ei ruokalistaa saatavilla.");
                $doc_new->appendChild($node);
                echo $doc_new->saveHTML();
                Yii::app()->end();
            }
            
            $clean = str_replace(" & ", " ja ", $d[0]);
            $doc_new->loadHTML($clean);
            
        }
        
        echo $doc_new->saveHTML();
        
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