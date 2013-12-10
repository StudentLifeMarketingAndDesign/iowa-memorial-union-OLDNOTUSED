<style>

#ces-header {

background: url($ContentImage.URL) no-repeat 0px 0px;

}

</style>
<div id="content-container">
    <span class="main-feature-tabs2">
        <span class="more4">- GRADUATE INTERNSHIPS &amp; ASSISTANTSHIPS  -</span>
    </span>
    <div id="interior-links-wrapper">
        <% include SubNavigation %>
        <% include Ads %>
        <li><a class="ads-one" href="http://www.facebook.com/imuevents"><img src="$ThemeDir/images/Facebook_LikeUs_IES.png" /></a></li>
    </div>
    <!--<div id="ces-header">
        <h6>$Title</h6>
        $CESMainSubtext
        <h5 class="header">Catering - Event Spaces - Iowa House Hotel</h5>
    </div>-->
    <div class="content-wrapper">
        <!--<div id="content1">$Content1</div> 
        <div id="content2">$Content2</div>-->

        <div id="room_page">
            <div class="slideshow">
                <span class="displayed">
                    <% if SlideshowImage1 %>$SlideshowImage1<% end_if %>
                </span>
                <span class="hidden">
                    <% if SlideshowImage2 %>$SlideshowImage2<% end_if %>
                    <% if SlideshowImage3 %>$SlideshowImage3<% end_if %>
                    <% if SlideshowImage4 %>$SlideshowImage4<% end_if %>
                </span>
                <span class="previous"><img src="$ThemeDir/images/glyphicons_arrow_left.png"></span>
                <span class="next"><img src="$ThemeDir/images/glyphicons_arrow_right.png"></span>
            </div>
            <div class="slideshow_fraction">
                image <span class="numerator">1</span> of <span class="denominator"></span>
            </div>

            <div class="info_pane">
                <span class="name">$Title</span>
                <% if Number %><span class="number">Room #$Number</span><% end_if %>

                <span class="deets">
                    <span class="deet">
                        <span class="heading">Capacity by Setup</span>
                        <span class="content listing">
                            <% if TablesAndChairsCapacity %>
                                <div><span><img src="$ThemeDir/images/table_icon.png"></span> Tables &amp; Chairs: $TablesAndChairsCapacity</div>
                            <% end_if %>

                            <% if RoundedTablesCapacity %>
                                <div><span><img src="$ThemeDir/images/round_table_icon.png"></span> Rounded Tables: $RoundedTablesCapacity</div>
                            <% end_if %>

                            <% if TheaterCapacity %>
                                <div><span><img src="$ThemeDir/images/theater_icon.png"></span> Theater: $TheaterCapacity</div>
                            <% end_if %>

                            <% if ClassroomCapacity %>
                                <div><span><img src="$ThemeDir/images/classroom_icon.png"></span> Classroom: $ClassroomCapacity</div>
                            <% end_if %>

                            <% if UshapeCapacity %>
                                <div><span><img src="$ThemeDir/images/ushape_icon.png"></span> U-Shape: $UshapeCapacity</div>
                            <% end_if %>

                            <% if BoardroomCapacity %>
                                <div><span><img src="$ThemeDir/images/boardroom_icon.png" width="24"></span> Board Room: $BoardroomCapacity</div>
                            <% end_if %>
                        </span>
                    </span>

                    <% if HasAnyAmenities %>
                        <span class="deet">
                        	<span class="heading">Equipment</span>
                        	<span class="content listing">
                        	    <% if HasComputer %>
                        		    <div><span><img src="$ThemeDir/images/computer_icon.png" height="24"></span> Computer</div>
                                <% end_if %>

                        		<% if HasEthernetConnection %>
                        			<div><span><img src="$ThemeDir/images/ethernet_connection_icon.png" width="24"></span> Ethernet Connection</div>
                        		<% end_if %>

                        		<% if HasProjectorScreen %>
                        			<div><span><img src="$ThemeDir/images/projector_icon.png" width="24"></span> Projector Screen</div>
                        		<% end_if %>

                        		<% if HasDVDVCR %>
                        		    <div><span><img src="$ThemeDir/images/dvd_vcr.png" height="24"></span> DVD/VCR Player</div>
                                <% end_if %>

                                <% if HasSpeakers %>
                        		    <div><span><img src="$ThemeDir/images/speakers_icon.png" height="24"></span> Speakers</div>
                                <% end_if %>

                                <% if HasMarkerboard %>
                        		    <div><span><img src="$ThemeDir/images/markerboard_icon.png" height="24"></span> Markerboard</div>
                                <% end_if %>

                                <% if Microphone %>
                        		    <div><span><img src="$ThemeDir/images/microphone_icon.png" height="24"></span> Microphone</div>
                                <% end_if %>
                                 <% if HasWifi %>
                        		    <div><span><img src="$ThemeDir/images/wifi_icon.png" height="24"></span> Wifi</div>
                                <% end_if %>

                        	</span>
                        </span>
                    <% end_if %>

                    <span class="deet">
                        <span class="heading">Rates</span>
                        <span class="rates content">
                            <div><span class="dolla_dolla_bill"><span class="sign">$</span>$StudentRate</span> Student Organizations</div>
                            <div><span class="dolla_dolla_bill"><span class="sign">$</span>$FacultyRate</span> Faculty Departments</div>
                            <div><span class="dolla_dolla_bill"><span class="sign">$</span>$GeneralRate</span> General Public</div>
                        </span>
                    </span>
        	  </span>

        	  <button class="reserve_this_room">Reserve This Room</button>

        	  <% if StandardCapacity %>
              		<div class="standard_setup_notice">
              			* denotes a room's standard setup. The non-standard setup fee is $40.
              		</div>
			  <% end_if %>
           </div>
        </div>

        <div class="clear"></div>
    </div>
</div>