<?php
/**
 * Defines the EventItem page type
 */
class EventItem extends Page {
   static $db = array(
   'EventDate' => 'Date',
   'EventDateAlt' => 'Text',
   'EventType' => 'Text',
   'EventDescription' => 'HTMLText',
   'EventTime' => 'Text',
   'EventLocation' => 'Text',
   'EventPrice' => 'Text',
   'EventUrl' => 'Text',
   'EventExternalUrl' => 'Text'

   );
   static $has_one = array(
   
   'EventImage' => 'Image',
   'EventThumbnail'=> 'Image'
   
   );
   
   static $many_many = array(
      'EventCategory' => 'EventCategory'
   );

   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
   $fields->removeFieldFromTab("Root.Content.Main","Title");
   $fields->removeFieldFromTab("Root.Content.Main","SubNavTitle");
   $fields->removeFieldFromTab("Root.Content.Main","IncludePageNameInContent");
   
   
 	
	$fields->removeFieldFromTab("Root.Content.Main","TitleImage");
	$fields->removeFieldFromTab("Root.Content","Content1");	
	$fields->removeFieldFromTab("Root.Content","Content2");	
	$fields->removeFieldFromTab("Root.Content","Images");	
	//$fields->addFieldToTab('Root.Content.Main', new CheckboxField('DisplayOnNow', 'Display on Now@IMU'));	
	
	$fields->addFieldToTab('Root.Content.Main', new TextField('Title', 'Event title:'));
	$fields->addFieldToTab('Root.Content.Main', new CalendarDateField('EventDate', 'Date'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('EventDateAlt', 'Alternate Date Text. If filled out, this will show up in place of the date filled out above.'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('EventTime', 'Time of Event:'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('EventLocation', 'Location of Event:'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('EventPrice', 'Price of Event (if Free, just input Free):'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('EventUrl', 'URL '));
	$fields->addFieldToTab('Root.Content.Main', new TextField('EventExternalUrl', 'URL to redirect users to instead of viewing an individual event page'));
	$fields->addFieldToTab('Root.Content.Main', new LabelField('CatLabel','Which categories does this event  belong to?'));
	$categoryList = DataObject::get('EventCategory');
	$fields->addFieldToTab('Root.Content.Main', new CheckboxSetField('EventCategory', '', $categoryList));
	$fields->addFieldToTab('Root.Content.Main', new TextField('EventType', 'Type of event (goes in gray bar above event title)'));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('EventDescription', 'Description of event:'));
	$fields->addFieldToTab('Root.Content.Images', new ImageField('EventImage', 'Large Event Image (for individual display pages)  628px x 447px (at 72 dpi)', null, null, null, $this->ClassName));
	$fields->addFieldToTab('Root.Content.Images', new ImageField('EventThumbnail', 'Event Thumbnail (optional for Featured Events on Now@IMU)  219 x 108 pixels', null, null, null, $this->ClassName));
	$fields->addFieldToTab('Root.Content.Images', new LabelField('ThumbnailLabel','The thumbnail field is optional. If you don\'t upload a thumbnail, an automatically resized version of the large event image will be placed on the Now@IMU homepage.'));	return $fields;
	
   }
   
   	/*function subPagesToCache() {
		//Test this out. Simply get all eventitem pages from the DB and update them
		$urls = array();
		$pages = DataObject::get("EventItem");
		foreach($pages as $page) {
		  $urls = array_merge($urls, (array)$page->subPagesToCache());
		}
		$urls[] = "/now";
		$urls[] = "/home";
		
		return $urls;
	}*/
	
	function pagesAffectedByUnpublishing() {
		$urls = array();
		$pages = DataObject::get("EventItem");
		foreach($pages as $page) {
		  $urls = array_merge($urls, (array)$page->subPagesToCache());
		}
		$urls[] = "/now";
		$urls[] = "/home";
		
		return $urls;
	}
	
   	function pagesAffectedByChanges() {
		$urls = array();
		$pages = DataObject::get("EventItem");
		foreach($pages as $page) {
		  $urls = array_merge($urls, (array)$page->subPagesToCache());
		}
		$urls[] = "/now";
		$urls[] = "/home";
		
		return $urls;
	}
	
	function onAfterUnpublish() {
		$urls = array();
		$pages = DataObject::get("EventItem");
		foreach($pages as $page) {
		  $urls = array_merge($urls, (array)$page->subPagesToCache());
		}
		$urls[] = "/now";
		$urls[] = "/home";
		
		//$this->publishPages($urls);
    }
 
   
   }

class EventItem_Controller extends Page_Controller {

	function init() {
		parent::init();
		Requirements::themedCSS("now-common");
		Requirements::themedCSS("NowEventItem");
	}
	
}
?>