<?php
/**
 * Defines the EventItem page type
 */
class HomePageWidget extends Page {
	static $db = array(

	"URL" => "Text"
	  
					  );
	static $has_one = array(
							
							);
	
	static $allowed_children = array ("HomePageWidgetItem", "HomePageMarqueeItem");
   


   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
   $fields->removeFieldFromTab('Root.Content.Main', 'Content');
   $fields->addFieldToTab('Root.Content.Main', new TextField('URL','URL'));
   /*$fields->addFieldToTab('Root.Content.Main', new TextField('HeaderText1','Secondary Header (optional) '));
   $fields->addFieldToTab('Root.Content.Main', new TextField('URL','URL'));
   
   $fields->addFieldToTab('Root.Content.Main', new ImageField('Image','Image'));*/	return $fields;
	
   }}

class HomePageWidget_Controller extends Page_Controller {
	
	function init() {
		parent::init();
	}
	

	

}?>