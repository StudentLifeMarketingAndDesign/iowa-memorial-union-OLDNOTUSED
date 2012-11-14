<?php
/**
 * Defines the Minisite page type
 */
class ScmmsHome extends TypeE {

function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->addFieldToTab('Root.Content.Content2', new HTMLEditorField('Content2','Content:'));
	/* Image Dimensions in the label */
	$fields->removeByName('ContentImage'); 
	$fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage', 'Content Image ( 187x112 pixels )', null, null, null, $this->ClassName));	return $fields;
	
   }}

class ScmmsHome_Controller extends TypeE_Controller {

function init() {
		parent::init();
		
		Requirements::themedCSS("scmms");
	
	}
	
/*function index(){
	return $this->renderWith(array('TypeE','Page'));
	}*/
 
}
 
?>