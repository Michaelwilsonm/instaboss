$(document).ready(function() {
  $(document).on('page:change', function () {

    $(function() {
      if ($('.pagination').length && $('#products').length) {
        $(window).scroll(function() {
          var url;
          url = $('.pagination .next_page').attr('href');
          if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
            $('.pagination').text("Loading more products...");
            console.log(url)
            return $.getScript(url);
          }
        });
        return $(window).scroll();
      }
    });

      // $.ajax({
      //   method: "GET",
      //   url: "/men/accessory?page=2",
      //   success: function(data){
      //     console.log("err" + data)
      //   },
      //   error : function(err){
      //     console.log("err" + err)
      //   }
      // });


  });
});