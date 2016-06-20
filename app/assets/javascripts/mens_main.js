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

      // var wom = "http://localhost:3000/women"
      // var men = "http://localhost:3000/men"

      if (windowScroll > 603 && womensUrl == document.URL) {
        $(".side_nav_mens").css({position: "fixed", marginTop: "-470px"});
      } else if (windowScroll > 603 && mensUrl == document.URL) {
        $(".side_nav_mens").css({position: "fixed", marginTop: "-470px"});
      } else {
        $(".side_nav_mens").css({position: "absolute", marginTop: "145px"});
      }


      if (windowScroll > 232 && document.URL != womensUrl){
        $(".side_nav_mens_main").css({position: "fixed", marginTop: "-80px"})
      } else if (windowScroll < 232 && document.URL != mensUrl){
        $(".side_nav_mens_main").css({position: "relative", marginTop: "155px"})
      }
        console.log(windowScroll)

      if (windowScroll < 10) {
        $(".search_bar").css({display: "none"})
      }else{
        $(".search_bar").fadeIn(800)
      }

    })


  });
});
