$(document).ready(function() {
  $(document).on('page:change',function() {

    $(".item_nav_top").hover(function(){
      $(".item_drop_shop_by").stop().fadeIn(300)
    },function(){
      $(".item_drop_shop_by").stop().fadeOut(300)
    });

    $(".item_nav_top_brand").hover(function(){
      $(".item_drop_shop_by_brand").stop().fadeIn(300)
    },function(){
      $(".item_drop_shop_by_brand").stop().fadeOut(300)
    });

  });


  $(".item_nav_top").hover(function(){
    $(".arrow-down-shop").toggleClass("arrow-active")
  })

  $(".item_nav_top_brand").hover(function(){
    $(".arrow-down-brand").toggleClass("arrow-active")
  })
});
