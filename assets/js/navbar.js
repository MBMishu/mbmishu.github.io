// Smooth scroll for the navigation menu
$(document).on("click", ".nav-menu a, .mobile-nav a", function (e) {
  if ($(this).parents(".nav-menu, .mobile-nav").length) {
    $(".nav-menu .active, .mobile-nav .active").removeClass("active");
    $(this).closest("li").addClass("active");
  }

  if ($("body").hasClass("mobile-nav-active")) {
    $("body").removeClass("mobile-nav-active");
    $(".mobile-nav-toggle i").toggleClass(
      "icofont-navigation-menu icofont-close"
    );
    $(".mobile-nav-overly").fadeOut();
  }
});

// Mobile Navigation
if ($(".nav-menu").length) {
  var $mobile_nav = $(".nav-menu").clone().prop({
    class: "mobile-nav d-lg-none",
  });
  $("body").append($mobile_nav);
  $("body").prepend(
    '<button type="button" id ="nav-toggle" class="mobile-nav-toggle d-lg-none"><i class="icofont-navigation-menu"></i></button>'
  );
  $("body").append('<div class="mobile-nav-overly"></div>');

  $(document).on("click", ".mobile-nav-toggle", function (e) {
    $("body").toggleClass("mobile-nav-active");
    $(".mobile-nav-toggle i").toggleClass(
      "icofont-navigation-menu icofont-close"
    );
    $(".mobile-nav-overly").toggle();
  });

  $(document).on("click", ".mobile-nav .drop-down > a", function (e) {
    e.preventDefault();
    $(this).next().slideToggle(300);
    $(this).parent().toggleClass("active");
  });

  $(document).click(function (e) {
    var container = $(".mobile-nav, .mobile-nav-toggle");
    if (!container.is(e.target) && container.has(e.target).length === 0) {
      if ($("body").hasClass("mobile-nav-active")) {
        $("body").removeClass("mobile-nav-active");
        $(".mobile-nav-toggle i").toggleClass(
          "icofont-navigation-menu icofont-close"
        );
        $(".mobile-nav-overly").fadeOut();
      }
    }
  });
} else if ($(".mobile-nav, .mobile-nav-toggle").length) {
  $(".mobile-nav, .mobile-nav-toggle").hide();
}

// Navigation active state on scroll
var nav_sections = $("section");
var main_nav = $(".nav-menu, #mobile-nav");

$(window).on("scroll", function () {
  var cur_pos = $(this).scrollTop() + 200;

  nav_sections.each(function () {
    var top = $(this).offset().top,
      bottom = top + $(this).outerHeight();

    if (cur_pos >= top && cur_pos <= bottom) {
      if (cur_pos <= bottom) {
        main_nav.find("li").removeClass("active");
      }
      main_nav
        .find('a[href="#' + $(this).attr("id") + '"]')
        .parent("li")
        .addClass("active");
    }
    if (cur_pos < 300) {
      $(".nav-menu ul:first li:first").addClass("active");
    }
  });
});
