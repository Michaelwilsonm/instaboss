$(document).ready(function() {
  $(document).on('page:change',function() {

    $(window).scroll(function(){
      var windowScroll = $(window).scrollTop();
      var windowHeight = $(window).height();

      if (windowScroll > 603) {
        $(".side_nav_mens").css({position: "fixed", marginTop: "-470px"});
      } else {
        $(".side_nav_mens").css({position: "absolute", marginTop: "137px"});
      }

      if (windowScroll > 634){
        $(".no_picture_side_nav_mens").css({position: "fixed", marginTop: "-520px"})
      } else if (windowScroll < 634){
        $(".no_picture_side_nav_mens").css({position: "absolute", marginTop: "114px"})
      }

      if (windowScroll > 615){
        $(".no_picture_side_nav_mens_extra_margin").css({position: "fixed", marginTop: "70px"})
      } else if (windowScroll < 615){
        $(".no_picture_side_nav_mens_extra_margin").css({position: "absolute", marginTop: "144px"})
      }

      if (windowScroll > 184){
        $(".menu-side-search-bar").css({position: "fixed", marginTop: "-110px"})
      } else if (windowScroll < 184){
        $(".menu-side-search-bar").css({position: "absolute", marginTop: "85px"})
      }

      if (windowScroll < 10) {
        $(".search_bar").css({display: "none"})
      }else{
        $(".search_bar").fadeIn(800)
      }

    })


  });
});