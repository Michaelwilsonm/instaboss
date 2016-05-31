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

      if (windowScroll > 580 && mensUrl == document.URL) {
        $(".side_nav_mens").css({position: "fixed"});
      } else if (windowScroll > 580 && womensUrl == document.URL) {
        $(".side_nav_mens").css({position: "fixed"});
      } else {
        $(".side_nav_mens").css({position: "absolute"});
      }

      if (windowScroll > 115) {
        $(".menu-side").css({position: "fixed",
                              top: "0px"})
      } else {
        $(".menu-side").css({position: "relative",
                              top: "200px;"})
      }
    })
  });
});
