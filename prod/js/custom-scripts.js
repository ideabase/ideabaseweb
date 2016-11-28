// Show and Hide the Navigation Menu, while also changing the menu text to describe open/closed //
$( "#navshow" ).click(function() {
  $( "nav" ).toggleClass( "nav--show" );
  $( "#navshow" ).toggleClass( "nav__trigger__link--show" );
  var menuclose = "Close";
  var menudefault = "Menu";
  $( "#navshow" ).text(menudefault);
  $( ".nav__trigger__link--show" ).text(menuclose);
});

// Show and Hide the Project Menu, while also changing the menu text to describe open/closed
$( "#categorytrigger" ).click(function() {
  $( ".overlay" ).fadeIn(350, "easeOutSine");
  $( ".category-window" ).delay(100).fadeIn(250, "easeInSine");

  $("html").addClass("no-scroll-mobile"); // Disable scrolling on main page while menu is visible
  $( "#categorytrigger" ).addClass( "button--show" );
});

$(".hide-overlay").click(function() {
  $( ".category-window" ).fadeOut(250, "easeOutSine");
  $( ".overlay" ).delay(100).fadeOut(150, "easeInSine");
  $("html").removeClass("no-scroll-mobile");
  $( "#categorytrigger" ).removeClass( "button--show" );
})

$(document).ready(function() {
  var path = window.location.href; // because the 'href' property of the DOM element is the absolute path
  $(".category-link").each(function() {
    if (this.href === path) {
      $(this).addClass("current");
    }
  });
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

$('.project-single__images').flickity({
  // options
  wrapAround: true,
  contain: true,
  watchCSS: true,
  autoPlay: 5000,
  imagesLoaded: true
});

// Reveal the Contact Us Button on Scroll //

window.sr = ScrollReveal({ reset: false });
sr.reveal('.footer-form__button__container', { duration: 1200, scale: 1   } );
sr.reveal('.section-people__logos', { duration: 500, scale: 1  } );
sr.reveal('.section-services__list__item__icon', { delay: 100, duration: 500 } );
sr.reveal('.section-header__title', { delay: 100, scale: 1, duration: 500 } );
sr.reveal('.section-projects__list', { scale: 1, duration: 500 } );
sr.reveal('.project-list__item--featured', { scale: 1, duration: 800 } );


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
