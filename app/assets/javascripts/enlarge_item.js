$(document).ready(function() {
  $(document).on('page:change',function() {
    $(".box").click(function(e){
      e.preventDefault()
      console.log($(this).next())
      $(".on-click-enlarge").hide()
      $(this).next().fadeIn(500)
    })

    $(".close-button-enlarged").click(function(){
      $(".on-click-enlarge").hide()
    })

  });
});