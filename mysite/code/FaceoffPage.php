<?php
/**
 * Defines the Orientation Data Collection Model & View Classes
 */
class FaceoffPage extends EventItem {
	public static $db = array(
	);
	static $has_one = array(					 
	);  
	
	function getCMSFields() {
	$fields = parent::getCMSFields();	
	/*$fields->removeFieldFromTab("Root.Content.Main","TitleImage");
	$fields->removeFieldFromTab("Root.Content","Content1");	
	$fields->removeFieldFromTab("Root.Content","Content2");	
	$fields->removeFieldFromTab("Root.Content","Images");	
	$fields->addFieldToTab("Root.Content.Main", new TextField('Header'));
	$fields->addFieldToTab("Root.Content.Main", new TextField('SubHeader'));*/
	return $fields;
   }}

class FaceoffPage_Controller extends Page_Controller {
	/*function index() {
		
	}
	function new() {
		
	}*/
	
	static $allowed_actions = array(
		
	);
	
	function init() {
		parent::init();	
		//Requirements::themedCSS("Orientation");
	}
}
 
?>