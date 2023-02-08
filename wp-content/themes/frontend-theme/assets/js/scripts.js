jQuery(document).ready(function($)  {
    $('.burger').click(function(event){
      $('.header,.burger,.navbar-nav,.header__contacts,.navigation').toggleClass('active')
   });
   
  
      var heroSwiper = new Swiper('.hero-slider__container', {
        //direction: 'horizontal',
        loop: true,
        pagination: {
          el: '.swiper-pagination',
          bulletClass: 'hero-slider__pagination__item',
          //type: 'bullets',
          bulletElement: 'div',
          clickable: true,
        },
        autoplay: {
              delay: 7000,
              disableOnInteraction: false,
            },
        bulletElement: 'button',
        scrollbar: {
          hide: true,
            },
        effect: 'fade',
      });

     var productSwiper = new Swiper('.product-slider__container', {
      slidesPerView: 3,
      centeredSlides: true,
      //spaceBetween: 30,
      cursorGrab: true,
      // autoplay: {
      //   delay: 5000,
      // },
      loop: true,
      grabCursor: true,
      navigation: {
        nextEl: '.product-slider__slide__nav__button-next',
        prevEl: '.product-slider__slide__nav__button-prev',
      },
      breakpoints: {
        800: {
          //slidesPerView: 1,
          //spaceBetween: 20
        }
      },
    });

  })