<?php

class SearchContestPage extends Page {
   
   public static $db = array(
   
   	"BackgroundColor" => "Text",
   	"HeaderLink" => "Text"
   
   );
   
   
   public static $has_one = array(
   	"Image" => "Image"
   
   );
   
   
   	public function getCMSFields()
	{
		$f = parent::getCMSFields();
		$f->addFieldToTab("Root.Content.Submissions", new ComplexTableField(
			$this,
			'Submissions',
			'SearchContestEntry',
			array('FirstName' => 'First Name','LastName'=>'Last Name','Email'=>'Email','CurrentStudent' => 'Current Student?', 'Code'=>'URL Code'),
			'getCMSFields_forPopup'
		));
		$f->addfieldToTab('Root.Content.Main', new LabelField("CodeLabel","Add ?code=ourFantasticCode to the url of this page and it will be recorded with the submission"));
		$f->addfieldToTab('Root.Content.Submissions', new LabelField("CodeLabel2","Add ?code=ourFantasticCode to the url of this page and it will be recorded with the submission"));

		$f->addfieldToTab('Root.Content.Main', new TextField("BackgroundColor","Background Color"));
		$f->addfieldToTab('Root.Content.Main', new ImageField("Image","Main Image (600 x 246)", null, null, null, $folderName ="search_contests"));
		$f->addfieldToTab('Root.Content.Main', new TextField("HeaderLink","Header Link"));
		$f->addfieldToTab('Root.Content.Main', new HTMLEditorField("Content","Content"));
		
		$f->removeFieldFromTab('Root.Behaviour', 'IMULogoUseWhiteText');
		$f->removeFieldFromTab('Root.Content.Main', 'IncludePageNameInContent');
		$f->removeFieldFromTab('Root.Content.Main', 'TitleImage');
		
		$f->removeFieldFromTab('Root.Content.Images', 'ContentImage');
		
		/* Content Fields */
		$f->removeFieldFromTab('Root.Content.Content1', 'Content1');
		$f->removeFieldFromTab('Root.Content.Content2', 'Content2');
		
		/* Sub Navigation Text Field*/
		$f->removeFieldFromTab('Root.Content.Main','SubNavTitle');
		
		/* Custom CSS field - attaches a custom CSS file if set */
		$f->removeFieldFromTab('Root.Content.Main', 'customCSS');
		
		$f->removeFieldFromTab("Root.Content","Content1");
		$f->removeFieldFromTab("Root.Content","Content2");
		$f->removeFieldFromTab("Root.Content","Images");
		
		return $f;
	}
   
  
}

class SearchContestPage_Controller extends ContentController {

	function init() {
			parent::init();
		}
		

	/**
	* This function lets you put a form on your page, using $Form.
	*/
	function Form() {

		return new Form($this, "Form", new FieldSet(
 
			// List your fields here
			

			new TextField("FirstName", "First name"),
			new TextField("LastName", "Last Name"),
			new EmailField("Email", "Email address"),
			new HiddenField("Code","Code",$this->request['code']),
					
			new OptionsetField("CurrentStudent", "Are you a current student at The University of Iowa?", array("yes"=>"Yes", "no"=>"No"),"yes")
 
		), new FieldSet(
 
			// List the action buttons here
			new FormAction("SignupAction", "Sign up")
 
		), new RequiredFields(
 
			"Email"
 
		));
	}
 
	/**
	* This function is called when the user submits the form.
	*/
	function SignupAction($data, $form) {
 
		
		// Create a new object and load the form data into it
		$entry = new SearchContestEntry();
		$form->saveInto($entry);
 
		// Write it to the database.
		$entry->write();
		
		Session::set('ActionStatus', 'success'); 
		Session::set('ActionMessage', 'Thanks for your entry!');
		
		//print_r($form);
		Director::redirectBack();
 
	}
	
	
	function StatusMessage() { 
	   if(Session::get('ActionMessage')) { 
	      $message = Session::get('ActionMessage'); 
	      $status = Session::get('ActionStatus');
	
	      Session::clear('ActionStatus'); 
	      Session::clear('ActionMessage');
	
	      return new ArrayData(array('Message' => $message, 'Status' => $status)); 
	   }
	
	   return false; 
	}


}	
 

 
?>