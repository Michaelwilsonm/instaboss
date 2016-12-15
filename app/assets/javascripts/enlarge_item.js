$(document).ready(function() {
  $(document).on('page:change',function() {
    THIS_PAGE_URL = window.location.href

    if (screen.width > 770){
      $(".box").click(function(e){
        e.preventDefault()
        var href = $(this).find("a").attr('href');
        window.history.pushState('page2', 'Title', href);
        $(".on-click-enlarge").hide()
        $(".tint").fadeIn(500)
        $(this).next().fadeIn(500)
      });

      $(".box_featured").click(function(e){
        e.preventDefault()
        var href = $(this).find("a").attr('href');
        window.history.pushState('page2', 'Title', href);
        $(".on-click-enlarge").hide()
        $(".tint").fadeIn(500)
        $(this).next().fadeIn(500)
      });

      $(".close-button-enlarged").click(function(){
        window.history.pushState('page2', 'Title', THIS_PAGE_URL);
        $(".on-click-enlarge").fadeOut(500)
        $(".tint").fadeOut(500)
      });

      $(".tint").click(function(){
        window.history.pushState('page2', 'Title', THIS_PAGE_URL);
        $(".on-click-enlarge").fadeOut(500)
        $(".tint").fadeOut(500)
      });
    }





  });
});