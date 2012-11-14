<?php
/**
 * Defines the NewsItemHolder page type
 */
class EventItemHolder extends Page {
   static $db = array(
   
   );
   static $has_one = array(
   );
  
   static $many_many = array ( "EventCategory" => "EventCategory");
   
   static $allowed_children = array('EventItem','CabEventPage', 'HomeEventItem');

   function getCMSFields() {
   $fields = parent::getCMSFields();
 	
	$fields->removeFieldFromTab("Root.Content.Main","TitleImage");
	$fields->removeFieldFromTab("Root.Content","Content1");	
	$fields->removeFieldFromTab("Root.Content","Content2");	
	$fields->removeFieldFromTab("Root.Content","Images");
	  
	  $categoryList = DataObject::get('EventCategory');

	 $fields->addFieldToTab('Root.Content.Main', new LabelField('catlabel','Show these categories of events on this page:'));
	 $fields->addFieldToTab('Root.Content.Main', new CheckboxSetField('EventCategory', '', $categoryList));	return $fields;
	
   }}

class EventItemHolder_Controller extends Page_Controller {
	



function rss() {
  $rss = new RSSFeed($this->EventItems(), $this->Link(), "IMU Events RSS Feed - The University of Iowa", "The lastest events happening now@IMU", "Title", "EventDescription");
  $rss->outputToBrowser();
  
  }
  
/*

OLD NOW@IMU Event grabbing functions, we now use EventItems($category = "none", $numItems = 0)
found in mysite/code/global/Page.php

function getEvents() {
	$events = $this->getManyManyComponents('EventCategory');
	return $events;
}

function nowEvents($range="all"){

		$where = "ClassName = 'EventItem' and EventDate >= CURDATE()";
		if($result = DataObject::get("EventItem",$where,"EventDate")){
		
			$num_results = $result->Count();
	
		}else{
	
			$num_results = 0;
	
		}
		
		$num_first_results = ceil($num_results/2);
		$num_last_results = $num_results - $num_first_results;
		
	if($num_results){
		if($range == "firstHalf"){
			$result = $result->getRange(0,$num_first_results);
			return $result;
		}else if ($range =="lastHalf"){
			return $result->getRange($num_last_results+($num_results % 2), $num_results);
		}else if (($range == "all")||(is_numeric($range))){
			return $result;
		}else{
			return false;
		}
	}
		
	
	} */ 



 
}?>