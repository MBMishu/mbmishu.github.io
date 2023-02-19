// made by mb_mishu
!(function($) {
    "use strict";
    $(function() {
        $('[data-toggle="tooltip"]').tooltip()
    });

    // preloader

    document.addEventListener("mousemove", function(e) {
        var rocket = document.querySelector('.rocket');
        rocket.style.left = e.offsetX + 'px';
        rocket.style.top = e.offsetY + 'px';
    });


    function stars() {
        let count = 20;
        let scene = document.querySelector('.scene');
        let i = 0;
        while (i < count) {
            let star = document.createElement('i');
            let x = Math.floor(Math.random() * window.innerWidth);
            let duration = Math.random() * 1;
            let h = Math.random() * 100;

            star.style.left = x + 'px';
            star.style.width = 1 + 'px';
            star.style.height = 50 + h + 'px';
            star.style.animationDuration = duration + 's';
            scene.appendChild(star);
            i++
        }
    }
    stars();
    setTimeout(function() {
        $('.loader_bg').fadeToggle();
    }, 100);

    // fullppage js]
    $('#fullpage').fullpage({
            licenseKey: ' C7F41B00-5E824594-9A5EFB99-B556A3D5',
            //options here
            lazyLoading: true,
            autoScrolling: true,
            navigation: true,
            navigationPosition: 'left',
            anchors: [],
            navigationTooltips: ['Home', 'About Me', 'Resume', 'My Work', 'Contact Me'],
            showActiveTooltip: false,
            //Scrolling
            css3: true,
            // scrollOverflow: true,
            fitToSection: true,
            scrollingSpeed: 90,
            scrollBar: true,
            easing: 'easeInOutCubic',
            easingcss3: 'ease',
            loopBottom: false,
            loopTop: false,
            dragAndMove: false,

            responsiveWidth: 768,
            responsiveHeight: 600,
            responsiveSlides: true,

            //Accessibility
            keyboardScrolling: true,
            animateAnchor: true,
            recordHistory: true,
        }

    );



    // scroll listen
    $(window).scroll(function() {
        var header = document.querySelector("header");
        header.classList.toggle("sticky", window.scrollY > 100);
        $('#nav-toggle').toggleClass("sticky", window.scrollY > 100);
        if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn('slow');
            $('.social-links').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
            $('.social-links').fadeOut('slow');
        }
    });

    $('.back-to-top').click(function() {
        $('html, body').animate({
            scrollTop: 0
        }, 10, 'easeInOutExpo');
        return false;
    });

    var fullHeight = function() {

        $('.js-fullheight').css('height', $(window).height());
        $(window).resize(function() {
            $('.js-fullheight').css('height', $(window).height());
        });

    };
    fullHeight();

    // Initiate venobox (lightbox feature used in portofilo)
    $('.venobox').venobox({
        spinner: 'cube-grid',
        'share': false
    });

    // owl carousel
    if ($('.resume-list').length) {
        $('.resume-list').owlCarousel({
            loop: true,
            nav: false,
            dots: true,
            items: 3,
            margin: 30,
            autoplay: false,
            smartSpeed: 700,
            autoplayTimeout: 6000,
            responsive: {
                0: {
                    items: 1,
                    margin: 0
                },
                460: {
                    items: 1,
                    margin: 0
                },
                576: {
                    items: 2,
                    margin: 20
                },
                992: {
                    items: 2,
                    margin: 30
                }
            }
        });
    }
    if ($('.skill-list').length) {
        $('.skill-list').owlCarousel({
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
                    margin: 10
                },
                460: {
                    items: 4,
                    margin: 10
                },
                576: {
                    items: 6,
                    margin: 20
                },
                992: {
                    items: 6,
                    margin: 30
                }
            }
        });
    }
    if ($('.project-list').length) {
        $('.project-list').owlCarousel({
            loop: false,
            nav: false,
            dots: true,
            items: 3,
            margin: 30,
            autoplay: true,
            smartSpeed: 100,
            autoplayTimeout: 6000,
            responsive: {
                0: {
                    items: 1,
                    margin: 0
                },
                460: {
                    items: 1,
                    margin: 0
                },
                576: {
                    items: 2,
                    margin: 0
                },
                992: {
                    items: 4,
                    margin: 0
                }
            }
        });
    }


})(jQuery);