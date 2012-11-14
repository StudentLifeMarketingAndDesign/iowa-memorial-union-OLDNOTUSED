<?php
/**
 * Defines the Minisite page type
 */
class HomeOrgObject extends DataObject {   
	public static $db = array(
	'Title' => 'Text',
	'LinkURL' => 'Text',
	'Description' => 'HTMLText'
	);
	static $has_one = array(
	'HomeOrgs' => 'HomePageBlog2',
	'ObjectImage' => 'Image'
	);
	public function GetHomeOrgs(){
		$set = DataObject::get("HomeOrgObject");
		if($set) return $set; else return null; 
	}
	function getCMSFields_forPopup() {
		$fields = new FieldSet();
		$fields->push( new TextField('Title','Title of section.') );
		$fields->push( new TextField('LinkURL','URL if this is a slider.') );
		$fields->push( new SimpleHTMLEditorField('Description','Description of student org.') );
		$fields->push( new ImageField('ObjectImage') );
		return $fields;
	}
}

?>