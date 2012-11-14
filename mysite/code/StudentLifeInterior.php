<?php
/**
 * Defines the Minisite page type
 */
class StudentLifeInteriorPage extends Page {

   
   public static $db = array(
							 
		'ExternalLink' => 'Text',
		'HideImage' => 'Boolean'
	
	);
	

 static $has_one = array(
   

	  
	  
	  );
	  
static $has_many = array(
	"StudentLifeStaffMembers" => "StudentLifeStaffMember"

);
	  

function getCMSFields() {
	$fields = parent::getCMSFields();
	

		$fields->addFieldToTab('Root.Content.Main', new TextField('ExternalLink','Enter Full URL of external link here'));
		$fields->addFieldToTab('Root.Content.Images', new CheckBoxField('HideImage','Should we hide the image?'));
		$tablefield = new DataObjectManager(
			$this,
			'StudentLifeStaffMember', // the name of the relationship
			'StudentLifeStaffMember', // the related table 
			array(
				"Title" => "Name"
			),
			'getCMSFields_forPopup' // the function to build the add/edit form
		);
		$fields->addFieldToTab( 'Root.Content.StaffMembers', $tablefield );
	
	return $fields;
	
   }}

class StudentLifeInteriorPage_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("StudentLifeCommon");
		Requirements::themedCSS("StudentLifeInterior");
		//Requirements::customxsaxas("test");
		
		
	
	
	
	}
 
}
 
?>