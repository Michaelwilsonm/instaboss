$(document).ready(function(){
    $("h1").hover(function(){
        $(this).next().fadeIn(500);
    },function(){
        $(this).next().fadeOut(500);
    });
});