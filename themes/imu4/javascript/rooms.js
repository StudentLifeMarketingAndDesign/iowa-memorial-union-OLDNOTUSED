/* Functions */
function initializeSlideshowElements() {
    // if there aren't any other images to show, hide the .next and .previous elements
    if ($('.slideshow .hidden img').length === 0) {
        $('.slideshow .next, .slideshow .previous').hide();
    }

    // the total number of images is the number of images in the .slideshow .displayed span, and the .slideshow .hidden span
    // if there are no images hide the .slideshow fraction, otherwise set the denominator to whatever the total count is
    var numberOfSlideshowImages = $('.slideshow .displayed img').length + $('.slideshow .hidden img').length;
    if (numberOfSlideshowImages > 0) {
        $('.slideshow_fraction .denominator').html( numberOfSlideshowImages );
    } else {
        $('.slideshow_fraction').hide();
    }
}

function toggleRoomsDropdown () {
    $('#toggle_rooms_dropdown').toggleClass('expanded');
    $('#rooms_dropdown_listing').toggle('slide', { direction: 'up' }, 50);
    $('#toggle_rooms_dropdown img').toggleClass('flipped');
}

function roomsDropdownListingIeCompatibility () {
    if ($.browser.msie) {
        var toggleRoomsDropdown = $('#toggle_rooms_dropdown');
        var roomsDropdownListing = $('#rooms_dropdown_listing');

        var top = 48 - $(window).scrollTop();
        var right = $(window).width() - toggleRoomsDropdown.offset().left - toggleRoomsDropdown.innerWidth();

        roomsDropdownListing.css('position', 'fixed')
                            .css('top', top <= 0 ? 0 : top)
                            .css('right', right);
    }
}

function prepareReserveARoomPage () {
    $('#breadcrumbs, #search_box, #minisite-header').remove();
    $('#reserve_a_room').html('<iframe id="reserve_a_room" src="http://scheduling.uiowa.edu/imu/" seamless></iframe>');

    // as of now, Page.ss includes the sidebar for every page, but we don't want this for the reserve a room page
    //// $('#sidebar').remove();
    // make the nav a little taller to fit the dropdown button
    ////$('#top_nav').css('height', '2.5em');

    // replace the nav with a rooms dropdown, or just add it alongside the nav
    $('#menu').css({ height: '37px', position: 'relative' });
    $('#nav').before('' +
                     '<div id="toggle_rooms_dropdown">View Rooms <img src="http://ces.stephenausman.com/down-arrow.png"></div>' +
                     '<div id="rooms_dropdown_listing"></div>')
             .remove();

    $('#toggle_rooms_dropdown').on('click', function (event) {
        toggleRoomsDropdown();
    });

    // preload the content for the rooms dropdown element at the top of the page
    $.ajax({
        method: 'GET',
        url: '/imu/meetings',
        success: function (data) {
            var roomsDropdownListing = $('#rooms_dropdown_listing');
            roomsDropdownListing.html($('#rooms_page', data).html());
            // the last .room_listing is the reserve a room page. we don't want this in our listing because we're already on the
            // reserve a room page
            roomsDropdownListing.find('.room_listing:last').remove();

            // set an event handler for any clicks on the room content links so that it displays things in a modal
            $('#rooms_dropdown_listing a').on('click', function (event) {
                var roomHref = $(this).attr('href');
                $('#modal').html('');
                $('#modal_container').toggle().css('opacity', 0).animate({opacity: 1}, 300);
                $.ajax({
                    method: 'GET',
                    url: roomHref + '?template=false',
                    success: function (data) {
                        toggleRoomsDropdown();
                        /* $('#modal_container').toggle().css('opacity', 0).animate({opacity: 1}, 300); */
                        $('#modal').html('<div id="room_page">' + $('#room_page', data).html() + '</div>')
                                   .append('<div class="close_modal top">Close</div><div class="close_modal">Close</div>');
                        initializeSlideshowElements();
                    },
                    error: function () {
                        window.location.reload();
                    }
                });
                event.preventDefault();
            });
        },
        complete: function (jqXHR, textStatus) {
            console.log(textStatus);
        }
    });
}

/* Slideshow next|previous */
$(document).on('click', '.slideshow .next, .slideshow .previous', function (event) {
    if ($('.slideshow .hidden img').length > 0) {
        var clickedArrow      = $(this);
        var oldDisplayedImage = $('.slideshow .displayed img:first');
        // the newDisplayedImage depends on the arrow the visitor clicked, was it .next or .previous?
        var newDisplayedImage = $('.slideshow .hidden img:' + (clickedArrow.hasClass('next') ? 'first' : 'last'));

        // move the newDisplayedImage to the .displayed span
        newDisplayedImage.detach().appendTo('.slideshow .displayed');

        // move the oldDisplayedImage to either the beginning or end of the .hidden span depending on whether .next or .previous was clicked
        clickedArrow.hasClass('next') ?
            oldDisplayedImage.detach().appendTo('.slideshow .hidden') :
            oldDisplayedImage.detach().prependTo('.slideshow .hidden');

        // Update the .slideshow fraction numbers (image X of Y)
        var slideshowNumeratorEl = $('.slideshow_fraction .numerator:first');
        var slideshowDenominatorValue = parseInt( $('.slideshow_fraction .denominator:first').text() );
        var newSlideshowNumeratorValue = parseInt(slideshowNumeratorEl.text()) + (clickedArrow.hasClass('next') ? 1 : -1);

        if (newSlideshowNumeratorValue === 0) {
            slideshowNumeratorEl.text(slideshowDenominatorValue);
        } else if (newSlideshowNumeratorValue > slideshowDenominatorValue) {
            slideshowNumeratorEl.text(1);
        } else {
            slideshowNumeratorEl.text(newSlideshowNumeratorValue);
        }
    }
});

/* Close modal */
$(document).on('click', '.close_modal, #modal_container', function (event) {
    if( $(event.target).is('.close_modal, #modal_container') ) {
        $('#modal_container').fadeOut(150);
    }
});

/* On page load */
$(document).ready(function () {
    initializeSlideshowElements();

    if ($('#reserve_a_room').length === 1) {
        prepareReserveARoomPage();
        roomsDropdownListingIeCompatibility();
    }
});

/* On window resize */
$(window).on('resize', function () {
    roomsDropdownListingIeCompatibility();
});

/* On scroll */
$(window).on('scroll', function () {
    roomsDropdownListingIeCompatibility();
});

$(document).on('click', '.reserve_this_room', function () {
	document.location = 'http://hulk.imu.uiowa.edu/imu/reservearoom/';
    /*var clickedButton = $(this);
    clickedButton.toggleClass('expanded')
                 .siblings('.how_to_reserve_this_room').toggle('fade', 100);

    var modal = $('#modal:visible');
    var animateScrollTopElement = modal.length === 1 ? modal : $('body');
    
    var scrollAmount = 67;
    animateScrollTopElement.animate({
        scrollTop: animateScrollTopElement.scrollTop() + (clickedButton.hasClass('expanded') ? scrollAmount : - scrollAmount)
    });*/
});
