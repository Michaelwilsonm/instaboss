$(document).ready(function() {
  $(document).on('page:change',function() {

    var shopByDropDown = (function(){
      var shopByMenu = $(".item_nav_top");
      var shopByDiv = $(".item_drop_shop_by");
      var shopByArrow = $(".arrow-down-shop");

      shopByMenu.hover(fadeInDiv, fadeOutDiv);
      shopByMenu.hover(toggleArrow);

      function toggleArrow(){
        shopByArrow.toggleClass("arrow-active")
      }

      function fadeInDiv(){
        shopByDiv.stop().fadeIn(300);
      }

      function fadeOutDiv(){
        shopByDiv.stop().fadeOut(300);
      }
    })();

    var brandsDropDown = (function(){
      var brandsMenu = $(".item_nav_top_brand");
      var brandsDiv = $(".item_drop_shop_by_brand");
      var brandArrow = $(".arrow-down-brand")

      brandsMenu.hover(fadeInDiv, fadeOutDiv);
      brandsMenu.hover(toggleArrow);

      function toggleArrow(){
        brandArrow.toggleClass("arrow-active");
      }

      function fadeInDiv(){
        brandsDiv.stop().fadeIn(300);
      }

      function fadeOutDiv(){
        brandsDiv.stop().fadeOut(300);
      }
    })();

    var brandsDropDown = (function(){
      var brandsMenu = $(".shop_look_nav_top");
      var brandsDiv = $(".shop_drop_shop_by");
      var brandArrow = $(".arrow-down-shop-look")

      brandsMenu.hover(fadeInDiv, fadeOutDiv);
      brandsMenu.hover(toggleArrow);

      function toggleArrow(){
        brandArrow.toggleClass("arrow-active");
      }

      function fadeInDiv(){
        brandsDiv.stop().fadeIn(300);
      }

      function fadeOutDiv(){
        brandsDiv.stop().fadeOut(300);
      }
    })();

  });
});





