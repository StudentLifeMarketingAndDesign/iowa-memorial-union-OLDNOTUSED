<?php
/**
 * Defines the Minisite page type
 */
class TheHubPage extends Page {

static $db = array(

	"TicketsContent" => "HTMLText",
	"Services1" => "HTMLText",
	"Services2" => "HTMLText"


);

function getCMSFields() {
	$fields = parent::getCMSFields();

	$fields->addFieldToTab("Root.Content.Tickets", new HTMLEditorField("TicketsContent", "Tickets"));

	$fields->addFieldToTab("Root.Content.Services", new HTMLEditorField("Services1", "ServicesLeft"));	
	$fields->addFieldToTab("Root.Content.Services", new HTMLEditorField("Services2", "ServicesRight"));	
	
	$fields->removeFieldFromTab('Root.Content.Main', 'Content');
	$fields->removeByName('Content1');
	$fields->removeByName('Content2');
	$fields->removeByName('Content3');
	$fields->removeByName('Content2Title');
	$fields->removeByName('Images');
	$fields->removeByName('TitleImage');
	
	$fields->removeByName('Content4');	
	
	return $fields;
	
   }}

class TheHubPage_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("TheHub");
	
	
	
	}
 
}
 
?>