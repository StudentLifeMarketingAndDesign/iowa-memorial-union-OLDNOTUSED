<?php

class SearchContestEntry extends DataObject {
  static $db = array(
    'FirstName' => 'Text',
    'LastName' => 'Text',
    'Email' => 'Text',
    'CurrentStudent' => 'text',
    'Code' => 'Text'
  );
}

?>