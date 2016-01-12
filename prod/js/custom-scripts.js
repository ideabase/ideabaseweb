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
  var contactclose = "Maybe Later? :(";
  var contactdefault = "Get In Touch Today";
  $( "#footer-form-toggle" ).text(contactdefault);
  $( ".contact__trigger__link--show" ).text(contactclose);
});

// Smooth scroll the user down to the contact form, while also opening the contact form and adjusting the text to open/closed //
$( "#contact-toggle" ).click(function() {
  $( "#footer-form" ).addClass( "form--show" );
  $( "#footer-form-toggle" ).addClass( "contact__trigger__link--show" );
  var contactclose = "Maybe Later? :(";
  var contactdefault = "Get In Touch Today";
  $( "#footer-form-toggle" ).text(contactdefault);
  $( ".contact__trigger__link--show" ).text(contactclose);
  $("html, body").animate({ scrollTop: $('#footer-form').offset().top }, 1000);
  return false;
});

// Initialize Flickity

$('.section-projects__list').flickity({
  // options
  wrapAround: true,
  contain: true,
  watchCSS: true
});

// Reveal the Contact Us Button on Scroll //

window.sr = ScrollReveal({ reset: true });
sr.reveal('.footer-form__button__container', { duration: 1200, scale: 1   } );
sr.reveal('.section-people__logos', { duration: 800, scale: 1  } );
sr.reveal('.section-services__list__item__icon', { delay: 300, duration: 800 } );
sr.reveal('.section-header__title', { delay: 300, scale: 1, duration: 800 } );
sr.reveal('.section-projects__list', { scale: 1, duration: 800 } );