<?php
/**
 * Defines the Orientation Data Collection Model & View Classes
 */
class BookstoreLikePage extends Page {
   
	public static $db = array(
		"Header" => "Text",
		"SubHeader" => "Text"
	);
	static $has_one = array(					 
	);  
	
	

		
	function getCMSFields() {
		$fields = parent::getCMSFields();
		
	$fields->removeFieldFromTab("Root.Content.Main","TitleImage");
	$fields->removeFieldFromTab("Root.Content","Content1");	
	$fields->removeFieldFromTab("Root.Content","Content2");	
	$fields->removeFieldFromTab("Root.Content","Images");	
		
	$fields->addFieldToTab("Root.Content.Main", new TextField('Header'));
	$fields->addFieldToTab("Root.Content.Main", new TextField('SubHeader'));
		
		return $fields;
   }}

class BookstoreLikePage_Controller extends ContentController {
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
		$orientationPerson->signup_source = $this->URLSegment;
		$orientationPerson->write();
		Director::redirect($this->URLSegment.'/');
	}
	public function show() {
		$mr = "first,last,email,id<br />";
		$records = DataObject::get("OrientationPerson");
		foreach ($records as $record) {
			if ($record->signup_source == "ubs") {
				$mr = $mr . $record->first_name . "," . $record->last_name . "," . $record->email . "," . $record->signup_source . "<br />";
			}
		}
		return $mr;
	}
	function init() {
		parent::init();	
		Requirements::themedCSS("Orientation");
	}
}
 
?>