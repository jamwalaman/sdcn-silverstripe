<?php

namespace {

    use SilverStripe\Assets\Image;
    use SilverStripe\AssetAdmin\Forms\UploadField;
    use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

    class SdcnHomePage extends Page
    {

        private static $db = [
            'Description' => 'HTMLText'
        ];

        private static $has_one = [
            'HomeBanner' => Image::class
        ];

        private static $owns = [
            'HomeBanner'
        ];

        public function getCMSFields() {
            $fields = parent::getCMSFields();
            $fields->addFieldToTab('Root.Main', $banner = UploadField::create('HomeBanner','Banner for home'), 'Content');
            $fields->addFieldToTab('Root.Main', new HTMLEditorField('Description','Add home page description'), 'Content');
            $banner->setFolderName('sdcn-home-banners');

            return $fields;
        }

    }
    
}
