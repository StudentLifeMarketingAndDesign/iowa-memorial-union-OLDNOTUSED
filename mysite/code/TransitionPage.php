<?php
/**
 * Defines the Minisite page type
 */
class TransitionPage extends Page {

   static $db = array(
					  
		"Item1Title" => "Text",
		"Item1URL" => "Text",
		"Item1InfoBoxText" => "HTMLText",
		"Item1DescriptionText" => "HTMLText",
		
		"Item2Title" => "Text",
		"Item2URL" => "Text",
		"Item2InfoBoxText" => "HTMLText",
		"Item2DescriptionText" => "HTMLText",
		
		"Item3Title" => "Text",
		"Item3URL" => "Text",
		"Item3InfoBoxText" => "HTMLText",
		"Item3DescriptionText" => "HTMLText",	
		
		"Item4Title" => "Text",
		"Item4URL" => "Text",
		"Item4InfoBoxText" => "HTMLText",
		"Item4DescriptionText" => "HTMLText",
   );
   
   
   
   static $has_one = array(
   		"Item1InfoBoxImage" => "Image",
		"Item1Image" => "Image",
		
		"Item2InfoBoxImage" => "Image",
		"Item2Image" => "Image",
		
		"Item3InfoBoxImage" => "Image",
		"Item3Image" => "Image",
		
		"Item4InfoBoxImage" => "Image",
		"Item4Image" => "Image",
 
   );


function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->removeByName('ContentImageCaption');
	$fields->removeByName('Content2'); 
	$fields->removeByName('Content1'); 
	$fields->removeByName('Content1Title'); 
	$fields->removeByName('ContentImage'); 
	$fields->removeByName('Images'); 
	
	$fields->addFieldToTab('Root.Content.Item1', new ImageField('Item1InfoBoxImage', 'Orange Infobox Image (97 x 97 pixels)', null, null, null, $this->ClassName));
	$fields->addFieldToTab('Root.Content.Item1', new ImageField('Item1Image', 'Main Image (400 x 300 pixels)', null, null, null, $this->ClassName));
	
	$fields->addFieldToTab('Root.Content.Item1', new TextField('Item1Title','Title'));
	$fields->addFieldToTab('Root.Content.Item1', new TextField('Item1URL','URL'));
	$fields->addFieldToTab('Root.Content.Item1', new HTMLEditorField('Item1InfoBoxText','Orange Infobox Text'));
	$fields->addFieldToTab('Root.Content.Item1', new HTMLEditorField('Item1DescriptionText','Description'));
	
	
	$fields->addFieldToTab('Root.Content.Item2', new ImageField('Item2InfoBoxImage', 'Orange Infobox Image (97 x 97 pixels)', null, null, null, $this->ClassName));
	$fields->addFieldToTab('Root.Content.Item2', new ImageField('Item2Image', 'Main Image (231 x 277 pixels)', null, null, null, $this->ClassName));
	
	$fields->addFieldToTab('Root.Content.Item2', new TextField('Item2Title','Title'));
	$fields->addFieldToTab('Root.Content.Item2', new TextField('Item2URL','URL'));
	$fields->addFieldToTab('Root.Content.Item2', new HTMLEditorField('Item2InfoBoxText','Orange Infobox Text'));
	$fields->addFieldToTab('Root.Content.Item2', new HTMLEditorField('Item2DescriptionText','Description'));
	
	
	$fields->addFieldToTab('Root.Content.Item3', new ImageField('Item3InfoBoxImage', 'Orange Infobox Image (97 x 97 pixels)', null, null, null, $this->ClassName));
	$fields->addFieldToTab('Root.Content.Item3', new ImageField('Item3Image', 'Main Image (231 x 277 pixels)', null, null, null, $this->ClassName));
	
	$fields->addFieldToTab('Root.Content.Item3', new TextField('Item3Title','Title'));
	$fields->addFieldToTab('Root.Content.Item3', new TextField('Item3URL','URL'));
	$fields->addFieldToTab('Root.Content.Item3', new HTMLEditorField('Item3InfoBoxText','Orange Infobox Text'));
	$fields->addFieldToTab('Root.Content.Item3', new HTMLEditorField('Item3DescriptionText','Description'));

	$fields->addFieldToTab('Root.Content.Item4', new ImageField('Item4InfoBoxImage', 'Orange Infobox Image (97 x 97 pixels)', null, null, null, $this->ClassName));
	$fields->addFieldToTab('Root.Content.Item4', new ImageField('Item4Image', 'Main Image (231 x 277 pixels)', null, null, null, $this->ClassName));
	
	$fields->addFieldToTab('Root.Content.Item4', new TextField('Item4Title','Title'));
	$fields->addFieldToTab('Root.Content.Item4', new TextField('Item4URL','URL'));
	$fields->addFieldToTab('Root.Content.Item4', new HTMLEditorField('Item4InfoBoxText','Orange Infobox Text'));
	$fields->addFieldToTab('Root.Content.Item4', new HTMLEditorField('Item4DescriptionText','Description'));	return $fields;
	
   }}

class TransitionPage_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("TransitionPage");

	
	}
 
}
 
?>