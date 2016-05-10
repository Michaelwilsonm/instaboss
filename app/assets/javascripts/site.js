$(document).ready(function() {
  $(document).on('page:change',function() {

    $(".box").hover(function(){
        var $description = $(".description_content")
        var $spec_table = $(".specials_table>td:nth-child(1)")
        $(this).find($spec_table).stop().css({opacity: 0, visibility: "visible"}).animate({opacity: 1.0}, 400)
        $(this).find($description).stop().css({opacity: 0, visibility: "visible"}).animate({opacity: 1.0}, 400)
    }, function(){
        var $description = $(".description_content")
        var $spec_table = $(".specials_table>td:nth-child(1)")
        $(this).find($spec_table).stop().animate({opacity: 0}, 400);
        $(this).find($description).stop().animate({opacity: 0}, 400);
    });


  });
});

