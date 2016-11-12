$(document).ready(function() {
  $(document).on('page:change',function() {

    $(window).scroll(function(){
      var windowScroll = $(window).scrollTop();
      var windowHeight = $(window).height();

        console.log(windowScroll)
      if (windowScroll > 333) {
        $(".desktop-categories").addClass("scroll-fixed-categories")
        $(".categorise").addClass("scroll-fixed-categorise")
      } else {
        $(".desktop-categories").removeClass("scroll-fixed-categories")
        $(".categorise").removeClass("scroll-fixed-categorise");
      }
    })


  });
});