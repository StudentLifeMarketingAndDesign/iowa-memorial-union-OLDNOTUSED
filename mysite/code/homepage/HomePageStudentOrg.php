<?php
/**
 * Defines the EventItem page type
 */
class HomePageStudentOrg extends Page {

	static $db = array(
	
	"URL" => "Text",
	
	  
	);
	
	static $has_one = array(
		"StudentOrgImage" => "Image"
							
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
	$fields->addFieldToTab('Root.Content.Main', new ImageField('StudentOrgImage','Student Org Image'));

	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Content','Content'));

		
		return $fields;
   }}

class HomePageStudentOrg_Controller extends Page_Controller {
	
	function init() {
		parent::init();

	

	}
	
	
	
	

}?>