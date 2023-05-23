var angular_app = function () {
  // scroll listen
  $(window).scroll(function () {
    var header = document.querySelector("header");
    // header.classList.toggle("sticky", window.scrollY > 100);
    $("#nav-toggle").toggleClass("sticky", window.scrollY > 100);
    if ($(this).scrollTop() > 100) {
      $(".back-to-top").fadeIn("slow");
      $(".social-links").fadeIn("slow");
    } else {
      $(".back-to-top").fadeOut("slow");
      $(".social-links").fadeOut("slow");
    }
  });
  $(".back-to-top").click(function () {
    $("html, body").animate(
      {
        scrollTop: 0,
      },
      10,
      "easeInOutExpo"
    );
    return false;
  });

  var fullHeight = function () {
    $(".js-fullheight").css("height", $(window).height());
    $(window).resize(function () {
      $(".js-fullheight").css("height", $(window).height());
    });
  };
  fullHeight();

  // if ($(".resume-list").length) {
  //   $(".resume-list").owlCarousel({
  //     loop: true,
  //     nav: false,
  //     dots: true,
  //     items: 3,
  //     margin: 30,
  //     autoplay: false,
  //     smartSpeed: 700,
  //     autoplayTimeout: 6000,
  //     responsive: {
  //       0: {
  //         items: 1,
  //         margin: 0,
  //       },
  //       460: {
  //         items: 1,
  //         margin: 0,
  //       },
  //       576: {
  //         items: 2,
  //         margin: 20,
  //       },
  //       992: {
  //         items: 2,
  //         margin: 30,
  //       },
  //     },
  //   });
  // }
};
