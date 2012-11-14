<?php
/**
 * Defines the HomePage page type
 */
class HomePageBlogVideo extends Page {

   static $db = array(
   
   "MainImageURL" => "Text",
   
   
   );
   
   
   
   static $has_one = array(
	"MainImage" => "Image" 
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
	
	
	
	
	$fields->addFieldToTab('Root.Content.Main', new TextField('MainImageURL','Main Image Link URL:'));
	$fields->addFieldToTab('Root.Content.Main', new ImageField('MainImage','Main Image: (628x447)', null, null, null, $this->ClassName));	return $fields;
	
   }}

class HomePageBlogVideo_Controller extends Page_Controller {

function init() {
	parent::init();
	Requirements::themedCSS("HomePageBlog");
}

	function RSSFeedImport($numItems,$feedURL="http://imu.uiowa.edu/news/category/imu-homepage/feed/") {
		
	  $output = new DataObjectSet();
	  
	  include_once(Director::getAbsFile(SAPPHIRE_DIR . '/thirdparty/simplepie/simplepie.inc'));
	  
	  $t1 = microtime(true);
	  $feed = new SimplePie($feedURL, TEMP_FOLDER);
	  $feed->init();
	  if($items = $feed->get_items(0, $numItems)) {
		 foreach($items as $item) {
			
			// Cast the Date
			$date = new Date('Date');
			$date->setValue($item->get_date());
	
			// Cast the Title
			$title = new Text('Title');
			$title->setValue($item->get_title());
			
			// Cast the description and strip
			$desc = new Text('Description');
			$desc->setValue(strip_tags($item->get_description()));
	
			$output->push(new ArrayData(array(
			   'Title'         => $title,
			   'Date'         => $date,
			   'Link'         => $item->get_link(),
			   'Description'   => $desc
			)));
		 }
		 return $output;
	  }
	}
 
}
 
?>