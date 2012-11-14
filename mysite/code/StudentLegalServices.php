<?php
/**
 * Defines the Minisite page type
 */
class StudentLegalServicesPage extends Page {
	public static $db = array(
	'ExternalLink' => 'Text',
	);
	static $has_one = array(
	);
	static $has_many = array(
		'StudentLegals' => 'StudentLegalObject'
	);

function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->addFieldToTab('Root.Content.Main', new TextField('ExternalLink','Enter Full URL of external link here'));
	$tablefield = new DataObjectManager(
			$this,
			'StudentLegals', // the name of the relationship
			'StudentLegalObject', // the related table 
			array(
				"Title" => "Title"
			),
			'getCMSFields_forPopup' // the function to build the add/edit form
		);	
	$fields->addFieldToTab( 'Root.Content.Objects', $tablefield );
	
	return $fields;
	}
}
class StudentLegalServicesPage_Controller extends Page_Controller {
	function init() {
		parent::init();
		Requirements::themedCSS("StudentLegalCommon");
		Requirements::themedCSS("StudentLegalServices");
		//Requirements::customxsaxas("test");
	}
}
 
?>