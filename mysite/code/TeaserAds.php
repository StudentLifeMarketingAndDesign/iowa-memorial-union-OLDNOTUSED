<?php

class TeaserAds extends Ads {

function getCMSFields() {
	$fields = parent::getCMSFields();

	$fields->removeByName("Ad2");
	$fields->removeByName("Ad3");
	$fields->removeByName("Ad4");	return $fields;
	
   }}

class TeaserAds_Controller extends Page_Controller {
 
}
 
?>