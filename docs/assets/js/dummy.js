var angular_dummy = function () {
  if ($(".skill-list").length) {
    console.log("owl");
    $(".skill-list").owlCarousel({
      loop: true,
      nav: false,
      dots: true,
      items: 3,
      margin: 30,
      autoplay: true,
      smartSpeed: 100,
      autoplayTimeout: 6000,
      responsive: {
        0: {
          items: 4,
          margin: 10,
        },
        460: {
          items: 4,
          margin: 10,
        },
        576: {
          items: 6,
          margin: 20,
        },
        992: {
          items: 8,
          margin: 30,
        },
      },
    });
  }
};
