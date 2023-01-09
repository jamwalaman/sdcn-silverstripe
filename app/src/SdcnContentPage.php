<?php

namespace {

    use SilverStripe\Forms\TextField;
    use SilverStripe\Assets\Image;
    use SilverStripe\AssetAdmin\Forms\UploadField;

    class SdcnContentPage extends Page
    {

        private static $db = [
            'BannerTitle' => 'Varchar'
        ];

        private static $has_one = [
            'Banner' => Image::class
        ];

        private static $owns = [
            'Banner'
        ];

        public function getCMSFields() {
            $fields = parent::getCMSFields();
            $fields->addFieldToTab('Root.Main', TextField::create('BannerTitle','Title for page')->setDescription('Title that appears on the page. Defaults to Page Name if left empty'),'Content');
            $fields->addFieldToTab('Root.Main', $banner = UploadField::create('Banner'), 'Content');
            $banner->setFolderName('sdcn-banners');

            return $fields;
        }

    }
    
}
