<?php
/**
 * Defines the AdPage page type
 */
class AdPage extends Page {
   static $db = array(
   
   'AdURL' => 'Text',
   'AdAlt' => 'Text',

   
   );
   static $has_one = array(
   'AdImage' => 'Image'
   );
   
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
 	
	$fields->removeFieldFromTab("Root.Content.Main","TitleImage");
	$fields->removeFieldFromTab("Root.Content","Content1");	
	$fields->removeFieldFromTab("Root.Content","Content2");	
	$fields->removeFieldFromTab("Root.Content","Images");
	$fields->removeFieldFromTab("Root.Content","MenuTitle");
	$fields->removeFieldFromTab("Root.Content","SubNavTitle");		
	
	
	$fields->addFieldToTab('Root.Content.Main', new TextField('AdURL','URL:'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('AdAlt','Alt Text:'));
	$fields->addFieldToTab('Root.Content.Main', new ImageField('AdImage', 'Main Ad Image (125x120 pixels)', null, null, null, $this->ClassName));
    	
   return $fields;
}function allPagesToCache() {
    // Get each page type to define its sub-urls
    $urls = array();
 
    // memory intensive depending on number of pages
    $pages = DataObject::get("SiteTree");
 
    foreach($pages as $page) {
      $urls = array_merge($urls, (array)$page->subPagesToCache());
    }
    
    // add any custom URLs which are not SiteTree instances
    $urls[] = "sitemap.xml";
 
    return $urls;
  }
 
 /**
   * Get a list of URLs to cache related to this page
   */
  function subPagesToCache() {
    $urls = array();
 
    // add current page
    $urls[] = $this->AbsoluteLink();
    
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
  }
   
   
   
}
 
class AdPage_Controller extends Page_Controller {




 
}
 
?>