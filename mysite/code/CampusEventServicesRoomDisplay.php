<?php
/**
 * Defines the Minisite page type
 */

if ($_SERVER['HTTP_HOST'] == 'hulk.imu.uiowa.edu') { ini_set('display_errors', 1); }
 
class CampusEventServicesRoomDisplay extends TypeA {

    static $db = array(
        // Generic
        'Number'      => 'Varchar',
        // Rates
		'StudentRate' => 'Varchar',
		'FacultyRate' => 'Varchar',
		'GeneralRate' => 'Varchar',
		// Capacities
		'TablesAndChairsCapacity' => 'Varchar',
		'RoundedTablesCapacity'   => 'Varchar',
		'TheaterCapacity'         => 'Varchar',
		'ClassroomCapacity'       => 'Varchar',
		'UshapeCapacity'          => 'Varchar',
		'BoardroomCapacity'       => 'Varchar',
		// Amenities
		'HasComputer'            => 'Boolean',
		'HasEthernetConnection'  => 'Boolean',
		'HasProjectorScreen'     => 'Boolean',
		'HasDVD'                 => 'Boolean',
		'HasSpeakers'            => 'Boolean',
		'HasMarkerboard'		 => 'Boolean',
		'HasMicrophone'			 => 'Boolean',
		'HasWifi'				 => 'Boolean'
    );

    /* // See if this will work with SS2.4
    static $has_one = array(
        'Thumbnail' => 'Image',
        'SlideshowImage1' => 'Image',
        'SlideshowImage2' => 'Image',
        'SlideshowImage3' => 'Image',
        'SlideshowImage4' => 'Image'
    );
    */
    
    static $has_one = array(
        'ThumbnailImage'  => 'Image',
        'SlideshowImage1' => 'Image',
        'SlideshowImage2' => 'Image',
        'SlideshowImage3' => 'Image',
        'SlideshowImage4' => 'Image'
    );
    
    static $defaults = array (
    	"HasWifi" => true
    
    );


    function getCMSFields() {
        $fields = parent::getCMSFields();

        /*$fields->addFieldToTab('Root.Content.Main', new TextField('Location', 'Room Location'));
        $fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('CESMainSubtext', 'Main subtext or link to a map'));*/

        $fields->removeByName('ContentImageCaption');
        $fields->removeByName('ContentImage2Caption');
        $fields->removeByName('ContentImage2');

        $fields->renameField('ContentImage', 'Room Background Image (772 by 303 pixels) DOES NOT RESIZE IMAGE, IMAGE MUST BE 772 X 303 PIXELS');

		$fields->addFieldToTab('Root.Content.Images', new ImageField('ThumbnailImage', 'Thumbnail Image (120 x 85)', null, null, null, $this->ClassName));
		$fields->addFieldToTab('Root.Content.Images', new ImageField('SlideshowImage1', 'Slideshow Image 1', null, null, null, $this->ClassName));
        $fields->addFieldToTab('Root.Content.Images', new ImageField('SlideshowImage2', 'Slideshow Image 2', null, null, null, $this->ClassName));
        $fields->addFieldToTab('Root.Content.Images', new ImageField('SlideshowImage3', 'Slideshow Image 3', null, null, null, $this->ClassName));
        $fields->addFieldToTab('Root.Content.Images', new ImageField('SlideshowImage4', 'Slideshow Image 4', null, null, null, $this->ClassName));

        // Generic
        $fields->addFieldToTab('Root.Content.Main', new TextField('Number', 'Number'));
        // Rates
        $fields->addFieldToTab('Root.Content.Rates', new TextField('StudentRate', 'Student Rate'));
        $fields->addFieldToTab('Root.Content.Rates', new TextField('FacultyRate', 'Faculty Rate'));
        $fields->addFieldToTab('Root.Content.Rates', new TextField('GeneralRate', 'General Rate'));
        // Capacities
        $fields->addFieldToTab('Root.Content.Capacities', new TextField('TablesAndChairsCapacity', 'Tables & Chairs Capacity <span style="float: right;">Put * after a capacity value to indicate a room\'s standard setup capacity.</span>'));
        $fields->addFieldToTab('Root.Content.Capacities', new TextField('RoundedTablesCapacity',   'Rounded Tables Capacity'));
        $fields->addFieldToTab('Root.Content.Capacities', new TextField('TheaterCapacity',         'Theater Capacity'));
        $fields->addFieldToTab('Root.Content.Capacities', new TextField('ClassroomCapacity',       'Classroom Capacity'));
        $fields->addFieldToTab('Root.Content.Capacities', new TextField('UshapeCapacity',          'U-Shape Capacity'));
        $fields->addFieldToTab('Root.Content.Capacities', new TextField('BoardroomCapacity',       'Board Room Capacity'));
        // Amenities
        $fields->addFieldToTab('Root.Content.Amenities', new CheckboxField('HasComputer', 'Has Computer?'));
        $fields->addFieldToTab('Root.Content.Amenities', new CheckboxField('HasEthernetConnection', 'Has Ethernet Connection?'));
        $fields->addFieldToTab('Root.Content.Amenities', new CheckboxField('HasProjectorScreen', 'Has Projector Screen?'));
        $fields->addFieldToTab('Root.Content.Amenities', new CheckboxField('HasDVD', 'Has DVD Player?'));
        $fields->addFieldToTab('Root.Content.Amenities', new CheckboxField('HasSpeakers', 'Has Speakers?'));
        $fields->addFieldToTab('Root.Content.Amenities', new CheckboxField('HasMarkerboard', 'Has Markerboard?'));
        $fields->addFieldToTab('Root.Content.Amenities', new CheckboxField('HasMicrophone', 'Has Microphone?'));
        $fields->addFieldToTab('Root.Content.Amenities', new CheckboxField('HasWifi', 'Has Wifi?'));        
        // Images
        /*$fields->addFieldToTab('Root.Content.Images', new ImageField('Thumbnail', 'Thumbnail Image'));
        $fields->addFieldToTab('Root.Content.Images', new ImageField('SlideshowImage1', 'Slideshow Image 1'));
        $fields->addFieldToTab('Root.Content.Images', new ImageField('SlideshowImage2', 'Slideshow Image 2'));
        $fields->addFieldToTab('Root.Content.Images', new ImageField('SlideshowImage3', 'Slideshow Image 3'));
        $fields->addFieldToTab('Root.Content.Images', new ImageField('SlideshowImage4', 'Slideshow Image 4'));*/

    	/*$fields->addFieldToTab('Root.Content.Content2', new HTMLEditorField('Content2a'));
    	$fields->removeByName('Content1Title');
    	$fields->removeByName('Content3Title');
    	$fields->removeByName('Images');
    	$fields->removeByName('TitleImage');
    	$fields->removeByName('Content4');*/

    	return $fields;

    }
    
    function getStandardCapacity () {
		$capacities = array(
			$this->TablesAndChairsCapacity,
			$this->RoundedTablesCapacity,
			$this->TheaterCapacity,
			$this->ClassroomCapacity,
			$this->UshapeCapacity,
			$this->BoardroomCapacity
		);
		
		foreach($capacities as $capacity) {
			if (!is_null($capacity) && substr($capacity, -1, 1) == '*') { return substr($capacity, 0, -1); }
		}

		return false;
	}
	
	function getDisplayCapacity () {
		
		if ($this->getStandardCapacity()) {
			return $this->getStandardCapacity();
		} else {
			$capacities = array(
				(int) $this->TablesAndChairsCapacity,
				(int) $this->RoundedTablesCapacity,
				(int) $this->TheaterCapacity,
				(int) $this->ClassroomCapacity,
				(int) $this->UshapeCapacity,
				(int) $this->BoardroomCapacity
			);
		}
		
		$capacities = array_filter($capacities);
		asort($capacities);
		$capacities = array_values($capacities);

		if (count($capacities) == 0) {
			return 'N/A';
		} elseif (count($capacities) == 1) {
			return $capacities[0];
		} else {
			return $capacities[0] . '-' . end($capacities);
		}

	}
}

class CampusEventServicesRoomDisplay_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("CampusEventServicesRoomDisplay");
	
	}

	function HasAnyAmenities () {
    	return $this->HasComputer ||
    	       $this->HasEthernetConnection ||
    	       $this->HasProjector ||
    	       $this->HasDVD ||
    	       $this->HasWifi;
	}

}
 
?>