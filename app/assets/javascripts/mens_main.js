$(document).ready(function() {
  $(document).on('page:change',function() {

    $(window).scroll(function(){
      var windowScroll = $(window).scrollTop();
      var windowHeight = $(window).height();

      if (windowScroll > 603) {
        $(".side_nav_mens").css({position: "fixed", marginTop: "-470px"});
      } else {
        $(".side_nav_mens").css({position: "absolute", marginTop: "145px"});
      }

        console.log(windowScroll)

      if (windowScroll > 685){
        $(".no_picture_side_nav_mens").css({position: "fixed", marginTop: "-540px"})
      } else if (windowScroll < 685){
        $(".no_picture_side_nav_mens").css({position: "relative", marginTop: "155px"})
      }

      if (windowScroll < 10) {
        $(".search_bar").css({display: "none"})
      }else{
        $(".search_bar").fadeIn(800)
      }

    })


  });
});