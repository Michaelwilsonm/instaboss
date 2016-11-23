$(document).ready(function() {

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

    count3 = 0
  setInterval(function(){
      $(".retail-images").animate({marginLeft: "-=604px"}, 8000,function(){
        count3 ++
        if (count3 == 3){
          count3 = 0
          $(".retail-images").css({marginLeft: "0px"})
        }

      })

  }, 10000);

});