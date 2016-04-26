$(document).ready(function(){
    $("h1").hover(function(){
        $(this).next().stop().fadeIn(500);
    },function(){
        $(this).next().stop().fadeOut(500);
    });
});