<?php
/**
 * Defines the NewsItem page type
 */
class NewsItem extends Page {
   static $db = array(
   
   'Date' => 'Date',
   'Author' => 'Text',

   
   );
   static $has_one = array(
   );
   
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
 	
	$fields->removeFieldFromTab("Root.Content.Main","TitleImage");
	$fields->removeFieldFromTab("Root.Content","Content1");	
	$fields->removeFieldFromTab("Root.Content","Content2");	
	$fields->removeFieldFromTab("Root.Content","Images");		
	$fields->addFieldToTab('Root.Content.Main', new CalendarDateField('Date'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('Author'));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Content','Content:'));	return $fields;
	
   }}

class NewsItem_Controller extends Page_Controller {




 
}?>