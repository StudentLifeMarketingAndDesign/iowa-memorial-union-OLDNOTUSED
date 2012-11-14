<?php
/**
 * Defines the Orientation Data Collection Model & View Classes
 */
class OrientationPageDev extends Page {
   
	public static $db = array(
	);
	static $has_one = array(					 
	);  
	
	

		
	function getCMSFields() {
		$fields = parent::getCMSFields();
		return $fields;
   }}

class OrientationPageDev_Controller extends ContentController {
	/*function index() {
		
	}
	function new() {
		
	}*/
	
	static $allowed_actions = array(
		'show' => 'CMS_ACCESS_CMSMain',
		'Form',
		'SignupAction',
		'init'
	);
	
	function Form() {
		//
		$myForm = new Form($this, "Form", new FieldSet(
			new TextField("first_name", "first name"),
			new TextField("last_name","last name"),
			new TextField("email","email"),
 			new HiddenField("facebook_id")
		), new FieldSet(
			new FormAction("SignupAction","Get Connected!")
		), new RequiredFields());
		$myForm->disableSecurityToken();
		return $myForm;
	}
 
	/**
	* This function is called when the user submits the form.
	*/
	function SignupAction($data, $form) {
		$orientationPerson = new OrientationPerson();
		$form->saveInto($orientationPerson);
		$orientationPerson->write();
		Director::redirect('/orientation-dev');
	}
	function show() {
		$mr = "first,last,email,id<br />";
		$records = DataObject::get("OrientationPerson");
		foreach ($records as $record) {
				$mr = $mr . $record->first_name . "," . $record->last_name . "," . $record->email . "," . $record->facebook_id . "<br />";
		}
		return $mr;
	}
	function init() {
		parent::init();	
		Requirements::themedCSS("Orientation");
	}
}
 
?>