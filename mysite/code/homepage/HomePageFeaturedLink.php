<?php
/**
 * Defines the EventItem page type
 */
class HomePageFeaturedLink extends Page {
	static $db = array(
		"HeaderText1" => "Text",
		"URL" => "Text",
	
	  
					  );
	static $has_one = array(
		"Image" => "Image"
							
							);
   


   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
   
   $fields->addFieldToTab('Root.Content.Main', new TextField('HeaderText1','Gray Header Text: '));
   $fields->addFieldToTab('Root.Content.Main', new TextField('URL','URL'));
   
   $fields->addFieldToTab('Root.Content.Main', new ImageField('Image','Image'));	return $fields;
	
   }}

class HomePageFeaturedLink_Controller extends Page_Controller {
	
	function init() {
		parent::init();

	

	}
	
	

}?>