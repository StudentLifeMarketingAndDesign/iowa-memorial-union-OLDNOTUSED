<?php
/**
 * Defines the Minisite page type
 */
class TypeB2Tab extends Page {

	static $defaults = array( 
	"ShowInMenus" => 0	
	);
	
	

   static $db = array(

	'BlackBoxText' => 'HTMLText',

   );
   
   
   static $has_one = array(
   	'FeatureBoxImage' => 'Image'
   
   );



function getCMSFields() {
	$fields = parent::getCMSFields();
$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Content', 'Content'));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('BlackBoxText','Black Box Text:', 4));
	$fields->addFieldToTab('Root.Content.Images', new ImageField('FeatureBoxImage', 'Feature Box Image'));	return $fields;
	
   }}

class TypeB2Tab_Controller extends Page_Controller {

function init() {
		parent::init();
		
		
	
	}
 
}
?>