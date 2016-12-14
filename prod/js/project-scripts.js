sr.reveal('.project-list__item--featured', { scale: 1, duration: 800 } );

function defer(method) {
    if (window.jQuery)
        method();
    else
        setTimeout(function() { defer(method) }, 50);
}

// Defer these scripts until Jquery is ready //

defer(function () {

  // Show and Hide the Project Menu, while also changing the menu text to describe open/closed
  var overlyShow = function() {
    $(".overlay").fadeIn(300, "easeOutSine");
    $(".overlay-window").delay(100).fadeIn(200, "easeInSine");
    $("html").addClass("no-scroll-mobile"); // Disable scrolling on main page while menu is visible
  }
  var overlayHide = function() {
    $(".overlay-window").fadeOut(250, "easeOutSine");
    $(".overlay").delay(100).fadeOut(150, "easeInSine");
    $("html").removeClass("no-scroll-mobile");
  }

  $("#categorytrigger").click(function() {
    overlyShow();
    // Show overlay when trigger is clicked
  });

  $(".hide-overlay, .overlay").click(function() {
    overlayHide();
    // Hide overlay when 'x' is clicked and when click outside window...
  });

  $(".overlay-window").click(function(e) {
    e.stopPropagation();
    // ...but not when click inside the content area
  });

  $(document).keyup(function(e) {
    if (e.keyCode === 27) overlayHide();   // Hide overlay with esc key
  });

  $('.project-single__images').flickity({
    // options
    wrapAround: true,
    contain: true,
    watchCSS: true,
    autoPlay: 5000,
    imagesLoaded: true
  });


  $(".category-link").click(function(e){

    // Check if the browser supports HTML5 history
    var historySupport = !!(window.history && history.pushState);

    e.preventDefault();
    var $filter = $(e.currentTarget);
    var href = $filter.attr("href");

    if (historySupport) {
      // Update the browser's address bar
      history.pushState(null, null, href);
    }

    $(".section-projects-all").addClass("transparent");

    $.ajax({
      url: href,
      success: function(result) {
        $(".section-projects-all").html($(result).find(".project-list"));
        $(".section-projects-all").removeClass("transparent");
      }
    });

    var path = window.location.href;
    if (this.href === path) {
      $(this).addClass("current");
      $(this).parent().siblings().find(".category-link").removeClass("current");
    }

    $(".overlay-window, .overlay").fadeOut(250, "easeOutSine");
    $("html").removeClass("no-scroll-mobile");

    var category = $(this).attr("title");
    $(".category-header").html(category);

  });

});
