$(document).ready(function() {
  $(document).on('page:change',function() {

    $(window).scroll(function(){
      var windowScroll = $(window).scrollTop();
      var windowHeight = $(window).height();

      if (windowScroll > 170) {
        $(".search-side").css({position: "fixed", marginTop: "-125px"});
      } else {
        $(".search-side").css({position: "absolute", marginTop: "65px"});
      }

      if (windowScroll > 643) {
        $(".side_nav_mens").css({position: "fixed", marginTop: "-520px"});
      } else {
        $(".side_nav_mens").css({position: "absolute", marginTop: "128px"});
      }

      if (windowScroll > 634){
        $(".no_picture_side_nav_mens").css({position: "fixed", marginTop: "-520px"})
      } else if (windowScroll < 634){
        $(".no_picture_side_nav_mens").css({position: "absolute", marginTop: "114px"})
      }

      if (windowScroll > 605){
        $(".no_picture_side_nav_mens_extra_margin").css({position: "fixed", marginTop: "100px"})
      } else if (windowScroll < 605){
        $(".no_picture_side_nav_mens_extra_margin").css({position: "absolute", marginTop: "144px"})
      }

      // console.log(windowScroll)

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