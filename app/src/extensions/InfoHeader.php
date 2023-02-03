<?php
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\ORM\DataExtension;

class InfoHeader extends DataExtension 
{
    
    private static $db = [
        'HeaderContent' => 'HTMLText'
    ];

    public function updateCMSFields(FieldList $fields) 
    {
        $fields->addFieldToTab("Root.Main", new HTMLEditorField("HeaderContent", "Header Info Content"));
    }
}
