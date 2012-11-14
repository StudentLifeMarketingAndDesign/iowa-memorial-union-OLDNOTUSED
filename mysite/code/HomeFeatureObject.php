<?php
/**
 * Defines the Minisite page type
 */
class HomeFeatureObject extends DataObject {   
	public static $db = array(
	'Title' => 'Text',
	'LinkURL' => 'Text',
	'Tagline' => 'Text',
	'Description' => 'HTMLText',
	'Published' => 'Boolean'
	);
	static $has_one = array(
	'HomeFeatures' => 'HomePageBlog2',
	'ObjectImage' => 'Image'
	);
	public function GetHomeFeatures(){
		$set = DataObject::get("HomeFeatureObject");
		if($set) return $set; else return null; 
	}
	function getCMSFields_forPopup() {
		$fields = new FieldSet();
		$fields->push( new TextField('Title','Title of feature.') );
		$fields->push( new CheckboxField('Published','Is this feature published?') );

		$fields->push( new TextField('Tagline','Tagline text under feature title.') );
		$fields->push( new TextField('LinkURL','URL if this is a slider.') );
		$fields->push( new SimpleHTMLEditorField('Description','Description of section.') );
		$fields->push( new ImageField('ObjectImage', 'Image (Must be 980 x 380 pixels)') );
		return $fields;
	}
}

?>