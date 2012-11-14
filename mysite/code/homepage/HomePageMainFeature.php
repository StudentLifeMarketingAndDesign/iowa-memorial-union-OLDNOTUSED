<?php
/**
 * Defines the EventItem page type
 */
class HomePageMainFeature extends Page {

	static $db = array(
	
	"URL" => "Text",
	"Tagline" => "Text"
	
	  
	);
	
	static $has_one = array(
		"Image" => "Image"
							
	);
	
	public function MainFeatures(){
		$set = DataObject::get("HomePageMainFeature");	
		if($set) return $set; else return null; 
	
	}
	
	function getCMSFields() {$fields = parent::getCMSFields();
	
	$fields->removeByName("ContentImage");
	$fields->removeByName('ContentImage2');
	$fields->removeByName('ContentImageCaption'); 
	$fields->removeByName('Images');
	$fields->removeByName('Content1');
	$fields->removeByName('Content2');
	$fields->removeByName('TitleImage');
	$fields->removeByName('IncludeSiblings');
	$fields->removeByName('SubNavTitle');
	$fields->removeByName('IncludePageNameInContent');
	
	
	
	
	$fields->addFieldToTab('Root.Content.Main', new TextField('URL','Link URL:'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('Tagline','Tagline (Text under feature title)'));

	$fields->addFieldToTab('Root.Content.Main', new ImageField('Image','Image (Must be 980 x 380 pixels!)', null, null, null, $this->ClassName));
		
		return $fields;
   }}

class HomePageMainFeature_Controller extends Page_Controller {
	
	function init() {
		parent::init();

	

	}
	
	
	
	

}?>