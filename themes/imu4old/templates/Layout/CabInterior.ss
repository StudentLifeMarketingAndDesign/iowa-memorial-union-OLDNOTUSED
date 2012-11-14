 <div id="content-container">

<span class="main-feature-tabs2">   </span>
  <div id="interior-links-wrapper">
    <% include SubNavigation %>
    <% include AdsCAB %>
  </div>
    <div id="content1">
    <% if URLSegment = about-cab %>
		<script type='text/javascript' src='/mysite/code/mediaplayer/swfobject.js'></script>
       <div id="mediaspace"></div>
        
      <script type='text/javascript'>
  var so = new SWFObject('/mysite/code/mediaplayer/player.swf','ply','355','260','9','#');
  so.addParam('allowfullscreen','true');
  so.addParam('allowscriptaccess','always');
  so.addParam('wmode','opaque');
   so.addVariable('file','http://rubicon.imu.uiowa.edu/assets/CAB-docs/CAB_PROMO.f4v');
 //so.addVariable('playlist','bottom');
      
  //so.addVariable('skin','http://www.longtailvideo.com/jw/upload/overlay.swf');
  so.addVariable('backcolor','ffffff');
   // so.addVariable('playlistsize','90');
  so.addVariable('frontcolor','000000');
  so.addVariable('lightcolor','0099cc');
  so.write('mediaspace');
</script>



    <% end_if %>
$Content1

    </div>
  <div class="clear"></div>
  </div>



