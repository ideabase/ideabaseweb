// Prepends - CodeKit should automatically compile the following JS dependencies at the top of this file //
// jquery.min.js, jquery.easing.1.3.js, scrollreveal.min.js, flicktiymin.js, jquery.fitvids.js, jquery.lazyload.min.js, picturefill.min.js//


// Show and Hide the Navigation Menu, while also changing the menu text to describe open/closed //
$( "#navshow" ).click(function() {
  $( "nav" ).toggleClass( "nav--show" );
  $( "#navshow" ).toggleClass( "nav__trigger__link--show" );
  var menuclose = "Close";
  var menudefault = "Menu";
  $( "#navshow" ).text(menudefault);
  $( ".nav__trigger__link--show" ).text(menuclose);
});


// Toggle the contact form when the Get in Touch button is clicked.  Also changes the text of the button to describe open/closed //
$( "#footer-form-toggle" ).click(function() {
  $( "#footer-form" ).toggleClass( "form--show" );
  $( "#footer-form-toggle" ).toggleClass( "contact__trigger__link--show" );
  var contactclose = "Maybe Later?";
  var contactdefault = "Get In Touch Today";
  $( "#footer-form-toggle" ).text(contactdefault);
  $( ".contact__trigger__link--show" ).text(contactclose);
});

// Load Google Fonts
WebFontConfig = {
    google: { families: [ 'Montserrat:700', 'Source+Sans+Pro:600,700,400,400italic' ] }
  };

(function() {
  var wf = document.createElement('script');
  wf.src = '//ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
  wf.type = 'text/javascript';
  wf.async = 'true';
  var s = document.getElementsByTagName('script')[0];
  s.parentNode.insertBefore(wf, s);
})();


// Smooth scroll the user down to the contact form, while also opening the contact form and adjusting the text to open/closed //
$( "#contact-toggle" ).click(function() {
  $( "#footer-form" ).addClass( "form--show" );
  $( "#footer-form-toggle" ).addClass( "contact__trigger__link--show" );
  var contactclose = "Maybe Later?";
  var contactdefault = "Get In Touch Today";
  $( "#footer-form-toggle" ).text(contactdefault);
  $( ".contact__trigger__link--show" ).text(contactclose);
  $("html, body").animate({ scrollTop: $('#footer-form').offset().top }, 1000);
  return false;
});

// Initialize Flickity on the two image sliders //

$('.section-projects__list').flickity({
  // options
  wrapAround: true,
  contain: true,
  watchCSS: true
});

// Reveal the Contact Us Button on Scroll //

window.sr = ScrollReveal({ reset: false });
sr.reveal('.footer-form__button__container', { delay: 200, duration: 1200, scale: 1   } );
sr.reveal('.section-people__logos', { duration: 500, scale: 1  } );
sr.reveal('.section-services__list__item__icon', { delay: 75, duration: 500 } );
sr.reveal('.section-header__title', { delay: 75, scale: 1, duration: 500 } );
sr.reveal('.section-projects__list', { scale: 1, duration: 500 } );
//sr.reveal('.global-footer__image__container', { delay: 0, scale: 1, opacity: 0, duration: 500 } );

// Check Animation and Start Animation on Lightbulb //

function isElementInViewport(elem) {
  var $elem = $(elem);

  // Get the scroll position of the page.
  var scrollElem = ((navigator.userAgent.toLowerCase().indexOf('webkit') !== -1) ? 'body' : 'html');

  var viewportTop = $(document).scrollTop();
  var viewportBottom = viewportTop + $(window).height();

  // Get the position of the element on the page.
  var elemTop = Math.round( $elem.offset().top );
  var elemBottom = elemTop + $elem.height();

  return ((elemTop < viewportBottom) && (elemBottom > viewportTop));
}

// Check if it's time to start the animation.
function checkAnimation() {
  var $elem = $('.global-footer__image__container');

  // If the animation has already been started
  if ($elem.hasClass('start')) return;

  if (isElementInViewport($elem)) {
    // Start the animation
    $elem.addClass('start');
  }
}

// Capture scroll events
$(window).scroll(function(){
  checkAnimation();
});


// Fit Videos into their place //

$(document).ready(function(){
  // Target your .container, .wrapper, .post, etc.
  $(".video-container").fitVids();
});


// Call Lazy Loaded Images //

$(function() {
  $("img.lazy").lazyload({
    threshold : 300
  });
});
