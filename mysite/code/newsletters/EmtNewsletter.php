<?php
/**
 * Defines the page type
 */
class EmtNewsletter extends NewsletterComponent {

   static $db = array(
   
    'IssueNumber' => 'Text',
	'SubFooterHeading' => 'Text',
	'SubFooter' => 'HTMLText',
	'Footer' => 'HTMLText'
	
   );
   
   static $has_one = array(

	  );
   
   static $allowed_children = array(
		"EmtNewsletterFeature"
	);


function getCMSFields() {
	$fields = parent::getCMSFields();
		// remove a field from a tab
		$fields->removeFieldFromTab('Root.Content', 'Content');
		$fields->addFieldToTab('Root.Content.Main', new TextField('IssueNumber', 'Issue Number'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('SubFooterHeading', 'Sub Footer Heading'));
		$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('SubFooter', 'Sub Footer'));
		$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Footer', 'Footer'));	return $fields;
	
   }}

class EmtNewsletter_Controller extends ContentController {

function init() {
	parent::init();
}
 
}
 
?>