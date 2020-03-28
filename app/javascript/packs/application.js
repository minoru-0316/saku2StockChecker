// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
// require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

//= require jquery3
//= require popper
//= require bootstrap-sprockets

//スクロールしたら出てくるボタン
jQuery(function() {
    var appear = false;
    var pagetop = $('#page_top');
    $(window).scroll(function () {
      if ($(this).scrollTop() > 150) {  
        if (appear == false) {
          appear = true;
          pagetop.stop().animate({
            'bottom': '50px' 
          }, 300); 
        }
      } else {
        if (appear) {
          appear = false;
          pagetop.stop().animate({
            'bottom': '-50px' 
          }, 300); 
        }
      }
    });
    pagetop.click(function () {
      $('body, html').animate({ scrollTop: 0 }, 500); 
      return false;
    });
  });  