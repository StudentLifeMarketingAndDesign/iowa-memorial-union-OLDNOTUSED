	$(function () {
			var tabContainers = $('div.tabs > div');
			
		
			if(window.location.hash){
				tabContainers.hide().filter(window.location.hash).show();	
					$('div.tabs ul.tabNavigation a').removeClass('selected');
				$(this).addClass('selected');
				
			
			}else {
		
				tabContainers.hide().filter(':first').show();
			}
			
			$('div.tabs ul.tabNavigation a').click(function () {
				tabContainers.hide();
				tabContainers.filter(this.hash).show();
				$('div.tabs ul.tabNavigation a').removeClass('selected');
				$(this).addClass('selected');
				return false;
			});
		});