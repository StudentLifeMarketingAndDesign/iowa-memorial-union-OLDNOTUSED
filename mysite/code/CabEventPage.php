<?php

class CabEventPage extends Page {
	
	public static $db = array(
	
	"CabEventDate" => "Date",
	"CabEventDateAlt" => "Text",
	"CabEventArtist" => "Text",
	"CabEventLocation" => "Text",
	"CabEventTime" => "Text",
	"CabEventDescription" => "HTMLText",
	"CabEventUrl" => "Text",
	
	"YouTubeID"=> "Text",
	
	);
	
	public static $has_one = array(
	
	"CabEventImage" => "Image",
	
	);
	
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->removeFieldFromTab("Root.Content","Content");
	$fields->removeFieldFromTab("Root.Content.Main","TitleImage");
	

	
$fields->addFieldToTab('Root.Content.YoutubeVideo', new TextField('YouTubeID', 'Youtube ID'));
	$fields->addFieldToTab('Root.Content.ShowDetails', new TextField('CabEventArtist', 'Artist'));
	$fields->addFieldToTab('Root.Content.ShowDetails', new TextField('CabEventUrl', 'Now@IMU Url'));
	$fields->addFieldToTab('Root.Content.ShowDetails', new CalendarDateField('CabEventDate', 'Date'));
	$fields->addFieldToTab('Root.Content.ShowDetails', new TextField('CabEventDateAlt', 'Alternate Date Text. If filled out, this will replace the normal date text on the CAB homepage.'));
	$fields->addFieldToTab('Root.Content.ShowDetails', new TextField('CabEventTime', 'Text'));

	$fields->addFieldToTab('Root.Content.ShowDetails', new TextField('CabEventLocation', 'Location: Try to Limit to a one word like IMU or FIELDHOUSE'));
	$fields->addFieldToTab('Root.Content.ShowDetails', new HTMLEditorField('CabEventDescription', 'Description'));
	$fields->addFieldToTab('Root.Content.Images', new ImageField('CabEventImage', 'Main Image  628px x 447px (at 72 dpi)', null, null, null, $this->ClassName));
	
	$fields->removeByName('Content1'); 
	$fields->removeByName('Content2');
	$fields->removeByName('ContentImage');
	$fields->removeByName('ContentImageCaption');	return $fields;
	
   }
   
      
   	function pagesAffectedByChanges() {
		$urls[] = "/cab";
		
		return $urls;
	}
	
	
   }

class CabEventPage_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	
	
	
}?>