<?php

class Footer extends Page {
   static $db = array(   
   

   
   );
   
   static $has_one = array(

   );
   
   function canCreate() {
		return Permission::check('ADMIN');
	}
   function getCMSFields() {
   
   		$fields = parent::getCMSFields();
   
   		if(!Permission::check('ADMIN')){
			$fields->removeFieldFromTab("Root","Behaviour");
		}
		
		$fields->addFieldToTab('Root.Content.Content', new HTMLEditorField('Content','Content:'));
		$fields->removeFieldFromTab("Root.Content.Content1","Content1");
		$fields->removeFieldFromTab("Root.Content.Content2","Content2");
		$fields->removeFieldFromTab("Root.Content","MenuTitle");
		$fields->removeFieldFromTab("Root.Content","SubNavTitle");
		$fields->removeFieldFromTab("Root","Metadata");
		$fields->removeFieldFromTab("Root.Content","Title");	return $fields;
	
   }}

class Footer_Controller extends ContentController {




 
}
 
?>