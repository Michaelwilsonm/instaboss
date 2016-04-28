$(document).ready(function(){
  //allows the fade in and fade out of images on main page
    $(".col-md-3").hover(function(){
        $(this).find("img").stop().css({
          opacity: 0,
          visibility: "visible"
        }).animate({
          opacity: 1
        }, 500)
    },function(){
        $(this).find("img").stop().css({
          opacity: 1,
          visibility: "visible"
        }).animate({
          opacity: 0
        }, 500)
    });
});

