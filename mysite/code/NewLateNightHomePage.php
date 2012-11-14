<?php
/**
 * Defines the Minisite page type
 */
class NewLateNightHomePage extends Page {

   
   public static $db = array(
		"ShowContent" => "Boolean",
		"GoodNews" => "HTMLText",
		"Purpose" => "HTMLText",
		"Apply" => "HTMLText",
		"Criteria" => "HTMLText",
		"Contact" => "HTMLText",
		"Evaluation" => "HTMLText",
		"Events" => "HTMLText"
	
	);
	

 static $has_one = array(
   
      'EventImage' => 'Image'
	  
	  
	  );
	  

function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->addFieldToTab('Root.Content.Content1', new CheckboxField('ShowContent','Show the following events? Uncheck to hide.'));
	
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('GoodNews', 'Good News'));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Purpose', 'Purpose'));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Apply', 'Apply'));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Criteria', 'Criteria'));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Contact', 'Contact'));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Evaluation', 'Evaluation'));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Events', 'Events'));
					
	
	return $fields;
	
   }}

class NewLateNightHomePage_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("StudentLifeCommon");
		Requirements::themedCSS("NewLateNightHomePage");
		//Requirements::customxsaxas("test");
		
		
	
	
	
	}
 
}
 
?>