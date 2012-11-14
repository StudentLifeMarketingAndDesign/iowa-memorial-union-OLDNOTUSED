<?php



class CleanupNowEventsTask extends BuildTask {

	protected $title = "Cleanup Now Events";
	protected $description = "Gets rid of outdated Now Events";
	
	
	function run($request){
		
		$key = "thEremacrec6aq39ruTr2BuPEtr4Wr7c";
		
		print_r($request);
		
		//$request_key = $request[];
		
		$events = DataObject::get('EventItem');
		
		if($events){
			foreach($events as $item){
				echo $item->Title.": ".$item->Expiry."<br />";
			
			}
			
		}
		
		
	}

}

?>