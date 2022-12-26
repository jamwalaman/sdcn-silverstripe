<?php
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\ORM\DataExtension;

class InfoFooter extends DataExtension 
{
    
    private static $db = [
        'FooterContent' => 'HTMLText'
    ];

    public function updateCMSFields(FieldList $fields) 
    {
        $fields->addFieldToTab("Root.Main", 
            new HTMLEditorField("FooterContent", "Footer Content")
        );
    }
}
