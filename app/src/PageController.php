<?php

namespace {

    use SilverStripe\CMS\Controllers\ContentController;
    use SIlverStripe\View\Requirements;

    class PageController extends ContentController
    {
        /**
         * An array of actions that can be accessed via a request. Each array element should be an action name, and the
         * permissions or conditions required to allow the user to access it.
         *
         * <code>
         * [
         *     'action', // anyone can access this action
         *     'action' => true, // same as above
         *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
         *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
         * ];
         * </code>
         *
         * @var array
         */
        private static $allowed_actions = [];

        protected function init()
        {
            parent::init();
            // You can include any CSS or JS required by your project here.
            // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
            Requirements::css('themes/simple/css/form.css');
            Requirements::css('themes/sdcn/dist/main.08d2b6f2c3a01f8bbb70.css');

            Requirements::javascript('themes/sdcn/dist/main-dist-0.js');
        }
    }
}
