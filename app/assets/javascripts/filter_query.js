$(document).ready(function() {
  $(document).on('page:change',function() {

    $(".media-query-header").click(function(){
      $(".query-on-click").slideToggle(100)
    })
  })
})