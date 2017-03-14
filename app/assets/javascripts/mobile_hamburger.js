$(document).ready(function() {
  $(document).on('page:change',function() {

    var toggleNavCount = 0

    $("#nav-toggle").click(function(){
    toggleNavCount ++
    $(".hamburger-slider").css({zIndex: "10"})
    $(".hamburger-slider").show()
      if (toggleNavCount % 2 == 0) {
        $(".logo-image").fadeIn()
        $(".mobile_container").css({display: "block"})
        $(".mobile_container_show").css({display: "block"})
        $(".hamburger-slider").animate({
          right: "1000px"
        },300, function(){
        })
      }else if (toggleNavCount % 2 != 0) {
        $(".logo-image").fadeOut()
        $(".hamburger-slider").animate({
          right: "-5px"
        },300, function(){
          $(".mobile_container").css({display: "none"})
          $(".mobile_container_show").css({display: "none"})
        })
      }
    });

    var spacingHeight = $(".sorting_class").height()
    $(".sorting-spacing").height(spacingHeight)

    $(window).scroll(function(){
      var scroll = $(this).scrollTop();
      if (scroll > 400){
        $(".sorting_class").css({position: "fixed", top: "128px"})
      } else {
        $(".sorting_class").css({position: "absolute", top: "0px"})
      }
    })


    $(".on-click-reveal-sub-categories").click(function(){
      $(this).next().slideToggle(200)
    })



  });
}); //end
