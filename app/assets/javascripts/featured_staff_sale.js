$(document).ready(function() {
  $(document).on('page:change', function () {


    $(window).scroll(function(){
      var scrollHeight = $(this).scrollTop();
      var womensPage = $(".womens_main_photo").hasClass('women-page');
      var mensPage = $(".mens_main_photo").hasClass('men-page');

      if (scrollHeight < 1685){
        if (mensPage){
        $(".desktop-categories>h1").text("Featured Men's");
        } else if (womensPage){
          $(".desktop-categories>h1").text("Featured Women's");
        }
      } else if (scrollHeight > 1685 && scrollHeight < 2942) {
        $(".desktop-categories>h1").text("Staff Picks");
      } else if (scrollHeight > 2942) {
        $(".desktop-categories>h1").text("Featured Sale");
      }
    })


  })
})