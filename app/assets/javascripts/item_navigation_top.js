$(document).ready(function() {
  $(document).on('page:change',function() {

    $(".item_nav_top").hover(function(){
      $(".item_drop_shop_by").show(100)
    },function(){
      $(".item_drop_shop_by").hide(100)
    })



  });
});
