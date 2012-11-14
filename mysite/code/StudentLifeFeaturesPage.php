<?php
/**
 * Defines the Minisite page type
 */
class StudentLifeFeaturesPage extends Page {

   
   public static $db = array(
	
	);
	

 static $has_one = array(
   
  
	  
	  
	  );
	  
static $has_many = array(

	"StudentLifeStaffMembers" => "StudentLifeStaffMember"

);
function getCMSFields() {
	$fields = parent::getCMSFields();
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

class StudentLifeFeaturesPage_Controller extends Page_Controller {

	function init() {
			parent::init();
			Requirements::themedCSS("StudentLifeCommon");
			Requirements::themedCSS("StudentLifeInterior");
			//Requirements::customxsaxas("test");
					

		}
		
	public function features(){
		$features = DataObject::get("Page", "ParentID = ".$this->ID, $sort = "Sort", null, $limit = 4);
		if($features){
			return $features;
		}
	}
	
	public function miniFeatures(){
		$features = DataObject::get("Page", "ParentID = ".$this->ID, $sort = "Sort", null, $limit=" 4,100");
		if($features){

			return $features;
		}
	}
	
}

 
?>