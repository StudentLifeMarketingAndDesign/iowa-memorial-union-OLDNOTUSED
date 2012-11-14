<?php
/**
 * Defines the EventItem page type
 */
class HomeEventItem extends EventItem {
   static $db = array(
	  
					  );
   static $has_one = array();
   


   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   $fields->removeFieldFromTab('Root.Content.Images','EventImage');
   $fields->removeFieldFromTab('Root.Content.Images','EventThumbnail');
   $fields->removeFieldFromTab('Root.Content.Main','EventPrice');
   $fields->removeFieldFromTab('Root.Content.Main','EventCategory');
   $fields->removeFieldFromTab('Root.Content.Main','CatLabel');
   
   $fields->addFieldToTab('Root.Content.Images', new ImageField('EventImage', 'Event Image: 117 x 103 pixels', null, null, null, $this->ClassName));	return $fields;
	
   }}

class HomeEventItem_Controller extends Page_Controller {
	
	function init() {
		parent::init();

	

	}
	
	

}?>