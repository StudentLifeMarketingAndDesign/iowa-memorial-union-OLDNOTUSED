<?php
/**
 * Defines the Minisite page type
 */
class StudentLifeObject extends DataObject {   
	public static $db = array(
	'Title' => 'Text',
	'URL' => 'Text',
	'Description' => 'HTMLText',
	);
	static $has_one = array(
	'StudentLifes' => 'LateNightInteriorPage',
	'ObjectImage' => 'Image'
	);
	function getCMSFields_forPopup() {
		$fields = new FieldSet();
		$fields->push( new TextField('Title','Title of section.') );
		$fields->push( new TextField('URL','URL if this is a slider.') );
		$fields->push( new SimpleHTMLEditorField('Description','Description of section.') );
		$fields->push( new ImageField('ObjectImage') );
		return $fields;
	}
}

?>