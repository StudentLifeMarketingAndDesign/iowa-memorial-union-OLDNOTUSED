<?php
/**
 * Defines the Orientation Data Collection Model & View Classes
 */
class RoomForm extends UserDefinedForm {
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab("Root.Content.Main", new HTMLEditorField('Content'));
		return $fields;
   }
}
class RoomForm_Controller extends UserDefinedForm_Controller {
	function init() {
		parent::init();
	}
}

?>