$(document).ready(function() {
  $(document).on('page:change',function() {
    $(".box").hover(function(){
        var $description = $(".description_content")
        $(this).find($description).stop().css({opacity: 0, visibility: "visible"}).animate({opacity: 1.0}, 400)
    }, function(){
        var $description = $(".description_content")
        $(this).find($description).stop().animate({opacity: 0}, 400);
    });
  });
});