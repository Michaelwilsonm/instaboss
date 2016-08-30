$(document).ready(function() {
  $(document).on('page:change',function() {
    var toggleNavCount = 0

    document.querySelector( "#nav-toggle" )
    .addEventListener( "click", function() {
      this.classList.toggle( "active" );
    });

    $("#nav-toggle").click(function(){
    toggleNavCount ++
    $(".hamburger-slider").show()
      if (toggleNavCount % 2 == 0) {
        $(".hamburger-slider").animate({
          right: "1000px"
        },300)
      }else if (toggleNavCount % 2 != 0) {
        $(".hamburger-slider").animate({
          right: "-5px"
        },300)
      }
    })



  });
}); //end
