<?php
/**
 * Defines the Minisite page type
 */
class LateNightInteriorPage extends Page {
	public static $db = array(
		'ExternalLink' => 'Text'
	);
	static $has_one = array(
	);
	static $has_many = array(
		'StudentLifes' => 'StudentLifeObject'
	);
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Content.Main', new TextField('ExternalLink','Enter Full URL of external link here'));
		
		$tablefield = new DataObjectManager(
			$this,
			'StudentLifes', // the name of the relationship
			'StudentLifeObject', // the related table 
			array(
				"Title" => "Title"
			),
			'getCMSFields_forPopup' // the function to build the add/edit form
		);
		
		
		
		$fields->addFieldToTab( 'Root.Content.Objects', $tablefield );
		return $fields;
	}
}

class LateNightInteriorPage_Controller extends Page_Controller {
	function init() {
		parent::init();
		Requirements::themedCSS("StudentLifeCommon");
		Requirements::themedCSS("LateNightInterior");
		//Requirements::customxsaxas("test");
	}
}
?>