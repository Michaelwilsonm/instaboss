$(document).ready(function() {
  $(document).on('page:change',function() {

    var click = 0;
    $(".refine").click(function(e){
      e.preventDefault();
      click ++;
      if ( click % 2 == 1 ) {
        $(".nav-cat-ul").slideDown(300);
      }else{
        $(".nav-cat-ul").slideUp(300);
      }
    });
  });
});
