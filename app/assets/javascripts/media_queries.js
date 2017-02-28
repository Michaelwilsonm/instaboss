$(document).ready(function() {
  $(document).on('page:change', function () {


    console.log(matchMedia)
    if (matchMedia) {
      var mq = window.matchMedia("(min-width: 1199px)");
      mq.addListener(WidthChange);
      WidthChange(mq);
    }
    $image = $(".image_div");
    $image_query = $(".image_div_query");
    $image_feature = $(".image_div_featured");

    $box_query = $(".box_query");

    function WidthChange(mq) {
      if (mq.matches) {
        $(".box_query").removeClass("box_query").addClass("box_featured")
        $(".image_div_query").removeClass("image_div_query").addClass("image_div_featured")
        $(".description_content_query").removeClass("description_content_query").addClass('description_content_featured')
      } else {
        $(".description_content_featured").removeClass("description_content_featured").addClass('description_content_query')
        $(".box_featured").removeClass("box_featured").addClass("box_query")
        $(".image_div_featured").removeClass("image_div_featured").addClass("image_div_query")
      }

    }
  })
})