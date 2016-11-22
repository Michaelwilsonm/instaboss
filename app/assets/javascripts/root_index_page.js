$(document).ready(function() {

  var lastScrollTop = 0;
  $(window).scroll(function(event){
     var st = $(window).scrollTop();
     if (st > lastScrollTop){

     } else if (st < 20){

     }
     lastScrollTop = st
  });


  count = 0
  setInterval(function(){
      $(".brand-images").animate({marginLeft: "-=804px"}, 8000,function(){
        count ++
        console.log(count)
        if (count == 3){
          count = 0
          $(".brand-images").css({marginLeft: "0px"})
        }

      })

  }, 10000);

});