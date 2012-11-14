<?php

class NewsletterHolder extends Page {
	
	public static $db = array(
	
	);
	
	public static $has_one = array(
	);
	
function canCreate() {
		return Permission::check('ADMIN');
	}
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	if(!Permission::check('ADMIN')){
		$fields->removeFieldFromTab("Root","Behaviour");
	}
	$fields->removeFieldFromTab("Root.Content.Main","Content");	return $fields;
	
   }}

class NewsletterHolder_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	

function rss() {
  $rss = new RSSFeed($this->Children(), $this->Link(), "IMU Newsletters - The University of Iowa", "Test", "NewsletterTitle","Content");
  $rss->outputToBrowser();
  
  }		
  
}

?>