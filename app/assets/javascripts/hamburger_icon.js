$(document).ready(function() {
  $(document).on('page:change',function() {

    document.querySelector( "#nav-toggle" )
    .addEventListener( "click", function() {
      this.classList.toggle( "active" );
    });

    var count = 0
    $("#nav-toggle").click(function(){
    count ++
    $(".hamburger-slider").show()
      if (count % 2 == 0) {
        $(".hamburger-slider").animate({
          right: "1000px"},
          500, function() {
            console.log("right")
        });
      }else if (count % 2 != 0) {
        $(".hamburger-slider").animate({
          right: "0px"},
          500, function() {
            console.log("0 px")
        });
      }
    })





  });
}); //end
