$(document).ready(function() {
  $(document).on('page:change',function() {

    $(document).on({
        mouseenter: function () {
            var $description = $(".description_content")
        $(this).find($description).stop().css({opacity: 0, visibility: "visible"}).animate({opacity: 1.0}, 400)
        },
        mouseleave: function () {
            var $description = $(".description_content")
            $(this).find($description).stop().animate({opacity: 0}, 400);
        }
    }, ".image_div");

    $(document).on({
        mouseenter: function () {
            var $description = $(".description_content_featured")
        $(this).find($description).stop().css({opacity: 0, visibility: "visible"}).animate({opacity: 1.0}, 400)
        },
        mouseleave: function () {
            var $description = $(".description_content_featured")
            $(this).find($description).stop().animate({opacity: 0}, 400);
        }
    }, ".image_div_featured");

    $(document).on({
        mouseenter: function () {
            var $description = $(".description_content_query")
        $(this).find($description).stop().css({opacity: 0, visibility: "visible"}).animate({opacity: 1.0}, 400)
        },
        mouseleave: function () {
            var $description = $(".description_content_query")
            $(this).find($description).stop().animate({opacity: 0}, 400);
        }
    }, ".image_div_query");

  });
});