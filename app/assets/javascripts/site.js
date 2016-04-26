$(document).ready(function(){
    $("h1").hover(function(){
        $(this).next().stop().css({opacity: 0, visibility: "visible"}).animate({opacity: 1}, 500)
    },function(){
        $(this).next().stop().css({opacity: 1, visibility: "visible"}).animate({opacity: 0}, 500)
    });
});

