<?php
/**
 * Defines the HomePage page type
 */
class HomePageBlog2 extends Page {

	static $db = array(
  	 "MainImageURL" => "Text",
  	 "Ad1URL" => "Text",
  	 "Ad2URL" => "Text",
  	 "Ad3URL" => "Text"
	);
   
	static $has_one = array(
		"MainImage" => "Image",
		"Ad1Image" => "Image",
		"Ad2Image" => "Image",
		"Ad3Image" => "Image"
		
	);
	static $has_many = array(
		'HomeOrgs' => 'HomeOrgObject',
		'HomeFeatures' => 'HomeFeatureObject'
	);
	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		/* Image Dimensions in the label */
		
		$fields->removeByName("ContentImage");
		$fields->removeByName('ContentImage2');
		$fields->removeByName('ContentImageCaption'); 
		$fields->removeByName('Images');
		$fields->removeByName('Content1');
		$fields->removeByName('Content2');
		$fields->removeByName('TitleImage');
		$fields->removeByName('IncludeSiblings');
		$fields->removeByName('SubNavTitle');
		$fields->removeByName('IncludePageNameInContent');
		
		//$fields->addFieldToTab('Root.Content.Main', new TextField('MainImageURL','Main Image Link URL:'));
		$fields->addFieldToTab('Root.Content.Main', new ImageField('Ad1Image','Advertisement 1 (295x300)', null, null, null, $this->ClassName));
		$fields->addFieldToTab('Root.Content.Main', new TextField('Ad1URL', 'Advertisement 1 URL'));

		$fields->addFieldToTab('Root.Content.Main', new ImageField('Ad2Image','Advertisement 2 (295x300)', null, null, null, $this->ClassName));
		$fields->addFieldToTab('Root.Content.Main', new TextField('Ad2URL', 'Advertisement 2 URL'));
		
		$fields->addFieldToTab('Root.Content.Main', new ImageField('Ad3Image','Advertisement 3 (295x300)', null, null, null, $this->ClassName));
		$fields->addFieldToTab('Root.Content.Main', new TextField('Ad3URL', 'Advertisement 3 URL'));
		
		//$fields->addFieldToTab('Root.Content.Main', new ImageField('MainImage','Main Image: (628x447)', null, null, null, $this->ClassName));
		$tablefield = new DataObjectManager(
			$this,
			'HomeFeatures', // the name of the relationship
			'HomeFeatureObject', // the related table 
			array(
				"Title" => "Title"
			),
			'getCMSFields_forPopup' // the function to build the add/edit form
		);
		$fields->addFieldToTab( 'Root.Content.Features', $tablefield );
		$tablefield2 = new DataObjectManager(
			$this,
			'HomeOrgs', // the name of the relationship
			'HomeOrgObject', // the related table 
			array(
				"Title" => "Title"
			),
			'getCMSFields_forPopup' // the function to build the add/edit form
		);
		$fields->addFieldToTab( 'Root.Content.Orgs', $tablefield2 );
		
		return $fields;
		
	   }
}

class HomePageBlog2_Controller extends RSSBlogPostsPage_Controller {

	function init() {
		parent::init();
		Requirements::themedCSS("HomePageBlog2");
		Requirements::javascript('sapphire/thirdparty/jquery/jquery-packed.js');
		Requirements::javascript('mysite/code/javascript/jquery.cycle.min.js');
		Requirements::javascript('mysite/tweetable/jquery.tweetable.js');
	
		/*	include_once($_SERVER['DOCUMENT_ROOT'].'/imu/mysite/simplepie/simplepie.inc');
			$t1 = microtime(true);
			$feed = new SimplePie('http://uber.imu.uiowa.edu/wordpress/rss', TEMP_FOLDER);
			$feed->enable_cache(false);
			$feed->init();
		
		//print_r($feed);
		$custom_fields = $feed->get_item(0)->get_item_tags(SIMPLEPIE_NAMESPACE_RSS_20,'custom_fields');
		
		print_r($custom_fields[0]['child']['']);*/
	
	}
	
	public function MainFeatures(){
		$set = DataObject::get("HomePageMainFeature");
		if($set) return $set; else return null; 
	}
	public function GetHomeFeatures(){
		$set = DataObject::get("HomeFeatureObject");
		if($set) return $set; else return null; 
	}
	public function GetHomeOrgs(){
		$set = DataObject::get("HomeOrgObject");
		if($set) return $set; else return null; 
	}
	public function StudentOrgs(){
		$set = DataObject::get("HomePageStudentOrg");
		if($set) return $set; else return null; 
	}
	
	
	
}//end HomePageBlog_Controller
 
?>