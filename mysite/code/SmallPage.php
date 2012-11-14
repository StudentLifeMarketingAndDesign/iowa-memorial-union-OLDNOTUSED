<?php
/**
 * Defines the Minisite page type
 */
class SmallPage extends TypeD {
   static $db = array(
   
   );
   
   static $has_one = array(
   
   );

	function getCMSFields() {
		$fields = parent::getCMSFields();
		/* Image Dimensions in the label */
		$fields->removeByName('ContentImage'); 
		//$fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage', 'Content Image ( 274x221 pixels )'));
		$fields->removeFieldFromTab("Root","Content2");
		return $fields;
	}
}

class SmallPage_Controller extends TypeD_Controller {
	function init() {
		parent::init();
		Requirements::clear();
		//Bloack Prototype, Then Load JQuery
		Validator::set_javascript_validation_handler('none');
		Requirements::javascript(SAPPHIRE_DIR .'/thirdparty/jquery/jquery.js');
		Requirements::javascript('userforms/thirdparty/jquery-validate/jquery.validate.min.js');
	}
	public function getForm() { 
		$record = DataObject::get_one("UserDefinedForm", "URLSegment = 'Feedback'"); 
		$results = new UserDefinedForm_Controller($record); 
		return $results;
	}
}
 
?>