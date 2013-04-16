<?php

class Page extends SiteTree {

	static $defaults = array(
	
	'IncludeSiblings' => 'True');
	
	static $db = array(
	
	'customCSS' => 'Text', 	
	
	"TeaserAdURL" => "Text",
	"TeaserAdAlt" => "Text",

	'Content1Title' => 'Text',
	'Content1' => 'HTMLText',
	
   
	'Content2Title' => 'Text',
	'Content2' => 'HTMLText',
	
	'SubNavTitle' => 'Text',
   
	'ContentImageCaption' => 'Text',
	
	'IncludeSiblings' => 'Boolean',
	'IncludePageNameInContent' => 'Boolean',
	
	"IMULogoUseWhiteText" => "Boolean",
	'SeoTitle' => 'Text'
	);
	
	static $has_one = array(
	
	"TeaserAdImage" => "Image",
	"ContentImage" => "Image",
	"TitleImage" => "Image");
	
	
	function NewsLimited($limit = 3) { 
	/* Grabs a limited number of news items for use in template */
		$Parent = DataObject::get_one("Page", "URLSegment = 'news'"); 
		return ($Parent) ? $Children = DataObject::get("Page", "ParentID = '$Parent->ID'","","", $limit) : false; 
	}	
	
	
		function NowEvents($limit = 3) { 
	/* Grabs a limited number of news items for use in template */
		$Parent = DataObject::get_one("Page", "URLSegment = 'now'"); 
		return ($Parent) ? $Children = DataObject::get("Page", "ParentID = '$Parent->ID'","","", $limit) : false; 
	}	
	
	

	function EventsLimited($limit = 3) { 
	/* Grabs a limited number of event items for use in template */
		$Parent = DataObject::get_one("Page", "URLSegment = 'events'"); 
		return ($Parent) ? $Children = DataObject::get("Page", "ParentID = '$Parent->ID'","","", $limit) : false; 
	}	
		
	function getCMSFields() { 
	
		$fields = parent::getCMSFields();
		
		if(!Permission::check('ADMIN')){
			$fields->removeFieldFromTab("Root","Behaviour");
			$fields->removeFieldFromTab("Root","Access");
			// Need this field for some modules that automatically edit "Content"
			//$fields->removeFieldFromTab("Root.Content.Main","Content");
		} else {
			
		}
		$fields->removeFieldFromTab("Root.Content.Main","Content");
		
		/* Include our custom fields, while removing some redundant/unnecessary fields like Content when we already have Content1 */
		$fields->addFieldToTab('Root.Behaviour', new CheckboxField('IMULogoUseWhiteText', 'Use white text in the IMU logo?'));
		$fields->addFieldToTab('Root.Content.Main', new CheckboxField('IncludePageNameInContent', 'Include page name in content area?'));
		$fields->addFieldToTab('Root.Content.Main', new ImageField('TitleImage','Title Image (if available, not required - this is for a custom page title ONLY)', null, null, null, $this->ClassName));
		
		if($this->getParent()) { 
			$fields->addFieldToTab('Root.Behaviour', new CheckboxField('IncludeSiblings', 'Include siblings in sub-navigation?'));
		} 
		
		$fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage', 'ContentImage', null, null, null, $this->ClassName));
		
		/* Content Fields */
		$fields->addFieldToTab('Root.Content.Content1', new HTMLEditorField('Content1','Content:'));
		$fields->addFieldToTab('Root.Content.Content2', new HTMLEditorField('Content2','Content:'));
		
		/* Sub Navigation Text Field*/
		$fields->addFieldToTab('Root.Content.Main', new TextField('SubNavTitle','SubNavigation Text (optional)'));
		
		/* Custom CSS field - attaches a custom CSS file if set */
		$fields->addFieldToTab('Root.Content.Main', new TextField('customCSS','Custom CSS filename to attach'));
		
		$fields->addFieldToTab('Root.Content.Main', new TextField('SeoTitle','Custome title for SEO purposes.'));

		
		return $fields; 
	} 
	
	  /**
   * Return a list of all the pages to cache
   */
 /* function allPagesToCache() {
    // Get each page type to define its sub-urls
    $urls = array();
 
    // memory intensive depending on number of pages
    $pages = DataObject::get("Page");
 
    foreach($pages as $page) {
      $urls = array_merge($urls, (array)$page->subPagesToCache());
    }
 
    return $urls;
  }*/
 
 /**
   * Get a list of URLs to cache related to this page
   */
  /*function subPagesToCache() {
    $urls = array();
 
    // add current page
    $urls[] = $this->Link();
    
    // cache the RSS feed if comments are enabled
    if ($this->ProvideComments) {
      $urls[] = Director::absoluteBaseURL() . "pagecomment/rss/" . $this->ID;
    }
    
    return $urls;
  }
  
  function pagesAffectedByChanges() {
    $urls = $this->subPagesToCache();
    if($p = $this->Parent) $urls = array_merge((array)$urls, (array)$p->subPagesToCache());
    return $urls;
  }*/

}


class Page_Controller extends ContentController {
	
	function BlogEntries($limit,$feedURL="http://imu.uiowa.edu/news/category/imu-homepage/feed/") {
		
	  $output = new DataObjectSet();
	  
	  include_once(Director::getAbsFile(SAPPHIRE_DIR . '/thirdparty/simplepie/simplepie.inc'));
	  
	  $t1 = microtime(true);
	  $feed = new SimplePie($feedURL, TEMP_FOLDER);
	  $feed->init();
	  if($items = $feed->get_items(0, $limit)) {
		 foreach($items as $item) {
			
			// Cast the Date
			$date = new Date('Date');
			$date->setValue($item->get_date());
	
			// Cast the Title
			$title = new Text('Title');
			$title->setValue($item->get_title());
			
			// Cast the description and strip
			$desc = new Text('Description');
			$desc->setValue(html_entity_decode($item->get_description()));
	
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
	
	
		function RSSItems($numItems = 30, $feedURL="http://uber.imu.uiowa.edu/wordpress/feed/") {
	
		$output = new DataObjectSet();
		$output->setPageLength(3);

	  include_once(Director::getAbsFile(SAPPHIRE_DIR . '/thirdparty/simplepie/simplepie.inc'));
		$t1 = microtime(true);
		$feed = new SimplePie($feedURL, TEMP_FOLDER);
		$feed->enable_cache(false);
		$feed->init();

		
		
	  if($items = $feed->get_items(0, $numItems)) {
	  
		 foreach($items as $item) {
		 	
		 	//$custom_fields = $item->get_item_tags(SIMPLEPIE_NAMESPACE_RSS_20,'custom_fields');
			//print_r($custom_fields[0]['child']['']['EventCost'][0]['data']);
			//print_r($item->get_description());
			// Cast the Date
			$date = new Date('Date');
			$date->setValue($item->get_date());
	
			// Cast the Title
			$title = new Text('Title');
			$title->setValue($item->get_title());
			
			// Cast the description and strip
			$desc = new HTMLText('Description');
			$desc->setValue(strip_tags($item->get_description()));
			
			//Custom Fields.. TODO: Make these conditional because we won't always have them.
			
			/*if(isset($custom_fields[0]['child']['']['EventCost'][0]['data'])){
				$cost = new Text('Cost');
				$cost->setValue(strip_tags($custom_fields[0]['child']['']['EventCost'][0]['data']));
			}else{ 
				$cost = null;
			}
			
			if($custom_fields[0]['child']['']['EventDate'][0]['data']){
				$event_date = new Text('EventDate');
				$event_date->setValue(strip_tags($custom_fields[0]['child']['']['EventDate'][0]['data']));
			}else{
				$event_date = null;
			}
			
			if($custom_fields[0]['child']['']['EventLocation'][0]['data']){
				$location = new Text('EventLocation');
				$location->setValue(strip_tags($custom_fields[0]['child']['']['EventLocation'][0]['data']));
			}else{
				$location = null;
			}*/
			
			if($thumbnail_enclosure = $item->get_enclosure()){
			
				//Thumbnail
				$thumbnail_url = new Text('ImageURL');
				$thumbnail_url->setValue($thumbnail_enclosure->link);
			}else{
				$thumbnail_url = null;
			
			}
			
	
			$output->push(new ArrayData(array(
			   'Title'         => $title,
			   'Date'         => $date,
			   'Link'         => $item->get_link(),
			   'Description'   => $desc,
			   //'Cost' => $cost,
			   //'EventDate' => $event_date,
			   //"Location" => $location,
			   "ImageURL" => $thumbnail_url
			)));
		 }
		
		 return $output;
	  } 
	}
	
	function EventItems($category = "none", $numItems = 0){
	
		if($category!="none"){
			$categoryObject = DataObject::get_one("EventCategory", "Title = '".$category."'");
			$items = $categoryObject->getManyManyComponents('EventItem', 'Expiry >= NOW()', $limit = $numItems);
			
			if($items) {return $items; }else {return null;}
			
		}else{
			$items = DataObject::get("EventItem", "ShowInMenus = 1 AND Expiry >= NOW()",null,null,$limit = $numItems);
			
			
			if($items) {return $items; }else {return null;}
			
		}
		
	}
	
	
	function DetectIE() {
	/* This is a function to test the user agent of the web browser to check if it's IE.
	Not currently in use. */
		$agent = $_SERVER['HTTP_USER_AGENT'];
		
		if(eregi("msie",$agent) && !eregi("opera",$agent)){
            $val = explode(" ",stristr($agent,"msie"));
			
         	//Return IE version number
			return $val[0];
		}else{
		
			return false;
		}
	}	
	
	function Siblings() {/* Control structure that allows us to grab a list of 
	"sibling" pages and display them in a template */
		if($this->ParentID){
			$whereStatement = "ParentID = ".$this->ParentID." and ShowInMenus = 1";
			return DataObject::get("Page", $whereStatement);
		}else{
			return false;
		}
 	}
	
	
	function allSiblings() {/* same as Siblings, but includes all siblings, including hidden ones.*/
		
		if($this->ParentID){
		
			$whereStatement = "ParentID = ".$this->ParentID;
			return DataObject::get("Page", $whereStatement);
		
		}else{
			return false;
			
		}
 	}
	
	

	function init() {
		parent::init();
		/* include our conditional statements for any IE hacks we need for page.css. */
		Requirements::insertHeadTags(
			"<!--[if IE ]><style type='text/css'>@import url(/themes/imu4/css/ie/page.css);</style><![endif]-->
			<!--[if IE 6]><style type='text/css'>@import url(/themes/imu4/css/ie6/page_ie6.css);</style><![endif]-->
			<!--[if IE 7]><style type='text/css'>@import url(/themes/imu4/css/ie7/page_ie7.css);</style><![endif]-->"
		);
		
		Requirements::insertHeadTags
		("<!--[if IE ]><style type='text/css'>@import url(/themes/" . SSViewer::current_theme()."/css/ie/". $this->ClassName. "_ie.css);</style><![endif]-->");
		Requirements::insertHeadTags
		("<!--[if IE 6]><style type='text/css'>@import url(/themes/" . SSViewer::current_theme()."/css/ie6/". $this->ClassName. "_ie6.css);</style><![endif]-->");
		Requirements::insertHeadTags
		("<!--[if IE 7]><style type='text/css'>@import url(/themes/" . SSViewer::current_theme()."/css/ie7/". $this->ClassName. "_ie7.css);</style><![endif]-->");	
		
		Requirements::themedCSS("page");
		Requirements::themedCSS("typography");
		Requirements::themedCSS("form");
		
		
		/* 
		*Easy way to make test templates without creating entirely new page types.
		*Instead of naming the template file {ClassName}.ss, you can name it {ClassName}_test.ss
		*and add ?test=1 to the URL to view the test version of the template. (Admins only)
		*/
		
		if(Permission::check('ADMIN')){
			
			//if($_GET['test'] == 1){
			//$this->renderWith($this->ClassName."_test", $this->ClassName);
			//}
			
		}

	}
	
	/*
function RSSEvents($numItems = 30, $feedURL="http://hulk.imu.uiowa.edu/afterclass_dev/events/newrss/") {
			// echo "1";return new DataObjectSet();
			
			$output = new DataObjectSet();
			$output->setPageLength(3);
			include_once('simplepie/simplepie.inc');
			$t1 = microtime(true);
			$feed = new SimplePie($feedURL, TEMP_FOLDER);
			$feed->enable_order_by_date(false);
			$feed->enable_cache(false);
			$feed->init();
			$feed->get_items(0, $numItems);
			
			if($items = $feed->get_items(0, $numItems)) {
		  	
			foreach($items as $item) {
			 	//do we need the simplepie rss2 namespace? test it. --actually... it isn't needed? idk why.
			 	//$custom_fields = $item->get_item_tags(SIMPLEPIE_NAMESPACE_RSS_20,'custom_fields');
			 	$custom_fields = $item->get_item_tags(null,'custom_fields');
				
				// Cast the Date
				//$date = new Date('Date');
				//$date->setValue($item->get_date());
				
				// Cast the Title
				$title = new Text('Title');
				$title->setValue($item->get_title());
				
				$dates = new Text('Dates');
				$dates->setValue($item->get_item_tags(null,'dates'));
				$dates->setValue($dates->value[0]['data']);
				
				$cost = new Text('Cost');
				$cost->setValue($item->get_item_tags(null,'cost'));
				$cost->setValue($cost->value[0]['data']);
				
				$location = new Text('Location');
				$location->setValue($item->get_item_tags(null,'location'));
				$location->setValue($location->value[0]['data']);
				
				$description = new Text('Description');
				$description->setValue($item->get_item_tags(null,'description'));
				$description->setValue($description->value[0]['data']);
				
				$smallimage = new Text('Smallimage');
				$smallimage->setValue($item->get_item_tags(null,'smallimage'));
				$smallimage->setValue($smallimage->value[0]['data']);
				
				if(isset($item_author)){
					$author->setValue($item_author->get_name());}
				
				// Cast the description and strip
				$desc = new HTMLText('Description');
				$desc->setValue(strip_tags($item->get_description()));
				
				$output->push(new ArrayData(array(
				   'Title'		=> $title,
				   'Dates'		=> $dates,
				   'Cost'		=> $cost,
				   'Location'	=> $location,
				   'Description'=> $description,
				   'Smallimage' => $smallimage,
				   'Link'		=> $item->get_link()
				)));
			 }
			
			 return $output;
		  } 
		}//end function RSSEvents()
*/
	
	function EditURL() {
		return "/admin/show/".$this->ID."/";
	}
   
   
  
}
   
   


?>