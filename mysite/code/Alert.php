<?php
/**
 * Defines the Alert Page Type
 */
class Alert extends Page {

   static $db = array(

   );
   
   
   
   static $has_one = array(
   );


function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->removeFieldFromTab("Root.Content.Main","CSSOptions");
	$fields->removeFieldFromTab("Root.Content.Main","cssfilelocation");
	
	
	
	$fields->removeFieldFromTab("Root","Content1");
	$fields->removeFieldFromTab("Root","Content2");
	$fields->removeFieldFromTab("Root","Content2");
	$fields->removeFieldFromTab("Root","TeaserAd");
	$fields->removeFieldFromTab("Root","Images");
	

	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Content1', 'Alert Info'));	return $fields;
	
   }}

class Alert_Controller extends Page_Controller {
	

 
}
 
?>