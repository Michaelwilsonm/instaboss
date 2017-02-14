$(document).ready(function() {
  $(document).on('page:change',function() {
    THIS_PAGE_URL = window.location.href

    $(document).on( "click", ".box", function(e) {
      e.preventDefault()
      var href = $(this).find("a").attr('href');
      window.history.pushState('page2', 'Title', href);
      $(".outside-container").hide()
      $(".tint").fadeIn(500)
      $(this).next().fadeIn(500)
    });

    $(document).on( "click", ".close-button-enlarged", function(e) {
      window.history.pushState('page2', 'Title', THIS_PAGE_URL);
      $(".outside-container").fadeOut(500)
      $(".tint").fadeOut(500)
    });

    if (screen.width > 770){
      $(".box").click(function(e){
        e.preventDefault()
        var href = $(this).find("a").attr('href');
        window.history.pushState('page2', 'Title', href);
        $(".outside-container").hide()
        $(".tint").fadeIn(500)
        $(this).next().fadeIn(500)
      });

      $(".tint").click(function(){
        window.history.pushState('page2', 'Title', THIS_PAGE_URL);
        $(".outside-container").fadeOut(500)
        $(".tint").fadeOut(500)
      });
    }





  });
});