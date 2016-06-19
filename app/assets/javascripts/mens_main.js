$(document).ready(function() {
  $(document).on('page:change',function() {

    $(".item_nav_top>a").click(function(e){
      e.preventDefault()
    })

    $(window).scroll(function(){
      var windowScroll = $(window).scrollTop();
      var windowHeight = $(window).height();
      var mensUrl = "http://www.instaboss.co/men"
      var womensUrl = "http://www.instaboss.co/women"

      if (windowScroll > 603 && mensUrl == document.URL) {
        $(".side_nav_mens").css({position: "fixed"});
      } else if (windowScroll > 603 && womensUrl == document.URL) {
        $(".side_nav_mens").css({position: "fixed"});
      } else {
        $(".side_nav_mens").css({position: "absolute"});
      }

      if (windowScroll > 245) {
        $(".side_search").css({marginTop: "0px"})
        $(".menu-side").css({position: "fixed",
                              top: "-30px"})
      } else if (windowScroll < 245){
        $(".side_search").css({marginTop: "90px"})
        $(".menu-side").css({position: "relative",
                              top: "0px"})
      }

    })
  });
});
