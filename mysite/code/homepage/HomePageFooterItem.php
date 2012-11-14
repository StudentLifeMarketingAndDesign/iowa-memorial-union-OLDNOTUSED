<?php
/**
 * Defines the EventItem page type
 */
class HomePageFooterItem extends Page {
	static $db = array(
	
	"URL" => "Text"
	  
					  );
	static $has_one = array(

							
);
   


   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
   $fields->removeFieldFromTab('Root.Content.Main', 'Content');
   $fields->addFieldToTab('Root.Content.Main', new TextField('URL','URL'));
   $fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Content','Content',4));	return $fields;
	
   }}

class HomePageFooterItem_Controller extends Page_Controller {
	
	function init() {
		parent::init();

	

	}
	
	

}?>