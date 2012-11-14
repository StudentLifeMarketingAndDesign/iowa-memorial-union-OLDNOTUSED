<?php

class CabEventHolder extends Page {
	
	public static $db = array(
	
	);
	
	public static $has_one = array(
	);

static $allowed_children = array('CabEventPage');
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->removeFieldFromTab("Root.Content","Content");	return $fields;
	
   }}

class CabEventHolder_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	

function rss() {
  $rss = new RSSFeed($this->Children(), $this->Title, "CAB Events Feed - The University of Iowa");
  $rss->outputToBrowser();
  
  }		
	
}

?>