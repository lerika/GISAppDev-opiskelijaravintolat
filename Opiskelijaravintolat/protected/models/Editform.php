<?php

class EditForm extends CFormModel
{
    public $muutos_nimi;
    public $muutos_osoite;
    public $muutos_kunta;
    public $muutos_www;
 
    public function rules()
    {
        return array(
            array('muutos_nimi, muutos_osoite, muutos_kunta', 'length', 'max'=>50),
            array('muutos_www', 'length', 'max'=>255),
            array('muutos_www', 'url'),
        );
    }
 
}

?>