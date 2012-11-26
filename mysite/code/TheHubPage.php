<?php
/**
 * Defines the Minisite page type
 */
class TheHubPage extends Page {

static $db = array(



);

function getCMSFields() {
	$fields = parent::getCMSFields();

	
	$fields->removeByName('Content3');
	$fields->removeByName('Content2Title');
	$fields->removeByName('Images');
	$fields->removeByName('TitleImage');
	
	$fields->removeByName('Content4');	return $fields;
	
   }}

class TheHubPage_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("TheHub");
	
	
	
	}
 
}
 
?>