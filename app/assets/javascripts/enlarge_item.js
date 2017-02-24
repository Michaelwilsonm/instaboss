$(document).ready(function() {

  if (screen.width > 770){

  THIS_PAGE_URL = ''

    $(document).on( "click", ".close-button-enlarged", function(e) {
      window.history.pushState('page2', 'Title', THIS_PAGE_URL);
      $(".outside-container").fadeOut(500)
      $(".tint").fadeOut(500)
    });

    $(document).on( "click", ".box", function(e) {
      THIS_PAGE_URL = window.location.href
      e.preventDefault()
      var href = $(this).find("a").attr('href');
      window.history.pushState('page2', 'Title', href);
      $(".outside-container").hide()
      $(this).next().fadeIn(500)
      $(".tint").fadeIn(500)
    });

    $(document).on( "click", ".box_featured", function(e) {
      THIS_PAGE_URL = window.location.href
      e.preventDefault()
      var href = $(this).find("a").attr('href');
      window.history.pushState('page2', 'Title', href);
      $(".outside-container").hide()
      $(this).next().fadeIn(500)
      $(".tint").fadeIn(500)
    });

    $(document).on( "click", ".tint", function(e) {
      window.history.pushState('page2', 'Title', THIS_PAGE_URL);
      $(".outside-container").fadeOut(500)
      $(".tint").fadeOut(500)
    });
  }

  // });
});