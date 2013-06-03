<span class="family-weekend-year">2013</span>
<div id="content-container">

<span class="main-feature-tabs2">   </span>

    <div id="content1">
	
	<ul class="nav">
		<li> <a class="home" href="/family-weekend"> Home </a></li>
		<li> <a class="athletics" href="/athletic-events/"> Athletic Events </a></li>
		<li> <a class="football" href="/football/"> Football </a></li>
		<li> <a class="travel" href="/travel/"> Travel</a></li>
		<li> <a class="faq" href="/frequently-asked-questions/"> FAQ </a></li>
		<li> <a class="events" href="/event-details/"> Events </a></li>
		<li class="last"> <a class="events" href="/photos/"> Photos </a></li>
	</ul>
  
  <span class="content1"> 
  <% if IncludePageNameInContent %>
  	<h1>$Title</h1>

	
  <% end_if %>
  
  
  
  <% if ContentImage %> $ContentImage <% end_if %></span>

<% if InteriorPageContent %>
<div id="interior-page">
 $InteriorPageContent
</div>


  <% else %>
  

<div id="events-column">
$EventsColumn
</div>
  
<% end_if %>





<!--<div id="description-column">

<h2 id="paragraph">Family Weekend</h2>
<h2 id="registration"><a href="http://www.signmeup.com/67378">Register Now</a></h2>
<p>If you have already registered for Family Weekend, but would like to purchase additional event tickets or t-shirts, have your original confirmation number in-hand and <a href="http://www.signmeup.com/67380" target="_blank">click here </a> to place your order.</p>
$DescriptionColumn

</div>-->

<div id="sponsor-column">
$SponsorColumn
</div>

  
  
  
    </div>
  <div class="clear"></div>
  </div>

