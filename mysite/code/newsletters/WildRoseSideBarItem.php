<?php
/**
 * Defines the Minisite page type
 */
class WildRoseSideBarItem extends NewsletterComponent {

	static $defaults = array(
							 
		'BackgroundColor' => 'Brown'
	
	);
	
	

   static $db = array(
   
	'BackgroundColor' => 'Text',

   );
   
   
   
   static $has_one = array(
   

   
   
   );



function getCMSFields() {
	$fields = parent::getCMSFields();
	
	
		$fields->removeFieldFromTab('Root.Content.Main','TitleImage');
		$fields->removeFieldFromTab('Root.Content.Main','IncludePageNameInContent');
		$fields->removeFieldFromTab('Root.Content.Main','SubNavTitle');
		$fields->removeFieldFromTab('Root.Content.Main','customCSS');
		$fields->removeFieldFromTab('Root.Content.Images','ContentImage');
	$fields->removeFieldFromTab('Root.Content','Content1');
	$fields->removeFieldFromTab('Root.Content','Content2');
	
	
	
	
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Content','Content:'));

	
	$array = array(
	  'Red' => 'Red',
	  'Brown' => 'Brown',
	  'White' => 'White',
	  'Gray' => 'Gray',
	);
	 
	$fields->addFieldToTab('Root.Content.Main', new DropdownField(
	  'BackgroundColor',
	  'Background Color',
	  $array
	));	
	
	
	return $fields;
	
   }}

class WildRoseSideBarItem_Controller extends ContentController {

function init() {
		parent::init();
	
		
		
	
	}
 
}
?>