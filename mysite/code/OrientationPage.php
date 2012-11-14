<?php
/**
 * Defines the Orientation Data Collection Model & View Classes
 */
class OrientationPage extends Page {
   
	public static $db = array(
		"Header" => "Text",
		"SubHeader" => "Text",
		"FBID" => "Text"
	);
	static $has_one = array(
		"HeadImage" => "Image",
		"TitleImage" => "Image"
	);
	
	

		
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main","TitleImage");
		$fields->removeFieldFromTab("Root.Content","Content1");	
		$fields->removeFieldFromTab("Root.Content","Content2");	
		$fields->removeFieldFromTab("Root.Content","Images");	
		
		$fields->addFieldToTab("Root.Content.Main", new TextField('Header'));
		$fields->addFieldToTab("Root.Content.Main", new TextField('SubHeader'));
		$fields->addFieldToTab("Root.Content.Main", new TextField('FBID','Facebook Page ID'));
		$fields->addFieldToTab("Root.Content.Main", new ImageField('HeadImage'));
		$fields->addFieldToTab("Root.Content.Main", new ImageField('TitleImage'));
		
		return $fields;
   }}

class OrientationPage_Controller extends ContentController {
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
		$mr = "first,last,email,signupsource,created<br />";
		$records = DataObject::get("OrientationPerson",null,"id DESC",null,1000);
		foreach ($records as $record) {
			if ($record->signup_source == $this->URLSegment) {
				$mr = $mr . $record->first_name . "," . $record->last_name . "," . $record->email . "," . $record->signup_source . "," . $record->Created . "<br />";
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