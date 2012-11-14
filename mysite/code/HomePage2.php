<?php
/**
 * Defines the HomePage page type
 */
class HomePage2 extends Page {

   static $db = array(
   
   "MainImageURL" => "Text",
   
   "Tab1Title" => "Text",
   "Tab2Title" => "Text",
   "Tab3Title" => "Text",
   "Tab4Title" => "Text",
   "Tab5Title" => "Text",
   
   "TabContent1a" => "HTMLText",
   "TabContent1b" => "HTMLText",
   "TabContent2a" => "HTMLText",
   "TabContent2b" => "HTMLText",
   "TabContent3a" => "HTMLText",
   "TabContent3b" => "HTMLText",
   "TabContent4a" => "HTMLText",
   "TabContent4b" => "HTMLText",
   "TabContent5a" => "HTMLText",
   "TabContent5b" => "HTMLText",
   
   
   );
   
   
   
   static $has_one = array();


function getCMSFields() {
	$fields = parent::getCMSFields();
	
	/* Image Dimensions in the label */
	$fields->renameField("ContentImage", "Content Image (628x447 pixels)");
	
	$fields->removeByName('ContentImage2');
	$fields->removeByName('ContentImageCaption'); 
	$fields->removeByName('Content1'); 
	$fields->removeByName('Content2'); 
	
	$fields->addFieldToTab('Root.Content.Images', new TextField('MainImageURL','Main Image Link URL:'));
	
	$fields->addFieldToTab('Root.Content.ContextualTab1', new TextField('Tab1Title','Contextual Tab 1 Title'));
	$fields->addFieldToTab('Root.Content.ContextualTab1', new HTMLEditorField('TabContent1a','Contextual Tab 1a Content'));
	$fields->addFieldToTab('Root.Content.ContextualTab1', new HTMLEditorField('TabContent1b','Contextual Tab 1b Content'));
	
	$fields->addFieldToTab('Root.Content.ContextualTab2', new TextField('Tab2Title','Contextual Tab 2 Title'));
	$fields->addFieldToTab('Root.Content.ContextualTab2', new HTMLEditorField('TabContent2a','Contextual Tab 2a Content'));
	$fields->addFieldToTab('Root.Content.ContextualTab2', new HTMLEditorField('TabContent2b','Contextual Tab 2b Content'));
	
	$fields->addFieldToTab('Root.Content.ContextualTab3', new TextField('Tab3Title','Contextual Tab 3 Title'));
	$fields->addFieldToTab('Root.Content.ContextualTab3', new HTMLEditorField('TabContent3a','Contextual Tab 3a Content'));
	$fields->addFieldToTab('Root.Content.ContextualTab3', new HTMLEditorField('TabContent3b','Contextual Tab 3b Content'));
	
	$fields->addFieldToTab('Root.Content.ContextualTab4', new TextField('Tab4Title','Contextual Tab 4 Title'));
	$fields->addFieldToTab('Root.Content.ContextualTab4', new HTMLEditorField('TabContent4a','Contextual Tab 4a Content'));
	$fields->addFieldToTab('Root.Content.ContextualTab4', new HTMLEditorField('TabContent4b','Contextual Tab 4b Content'));
	
	$fields->addFieldToTab('Root.Content.ContextualTab5', new TextField('Tab5Title','Contextual Tab 5 Title'));
	$fields->addFieldToTab('Root.Content.ContextualTab5', new HTMLEditorField('TabContent5a','Contextual Tab 5a Content'));
	$fields->addFieldToTab('Root.Content.ContextualTab5', new HTMLEditorField('TabContent5b','Contextual Tab 5b Content'));	return $fields;
	
   }}

class HomePage2_Controller extends Page_Controller {

function init() {
	parent::init();
	Requirements::themedCSS("HomePage");
}
 
}
 
?>