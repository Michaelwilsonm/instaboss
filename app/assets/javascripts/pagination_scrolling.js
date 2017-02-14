$(document).ready(function() {
  $(document).on('page:change', function () {

    $("#paginate_page").click(function(e){
      var url = $('.pagination .next_page').attr('href');
      return $.getScript(url);
    })


  });
});