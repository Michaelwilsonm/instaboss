$(document).ready(function() {
  $(document).on('page:change',function() {


    if (screen.width > 770){
      $(".box").click(function(e){
        console.log(e)
        e.preventDefault()
        $(".on-click-enlarge").hide()
        $(".tint").fadeIn(500)
        $(this).next().fadeIn(500)
      });

      $(".box_featured").click(function(e){
        e.preventDefault()
        $(".on-click-enlarge").hide()
        $(".tint").fadeIn(500)
        $(this).next().fadeIn(500)
      });

      $(".close-button-enlarged").click(function(){
        $(".on-click-enlarge").fadeOut(500)
        $(".tint").fadeOut(500)
      });

      $(".tint").click(function(){
        $(".on-click-enlarge").fadeOut(500)
        $(".tint").fadeOut(500)
      });
    }





  });
});