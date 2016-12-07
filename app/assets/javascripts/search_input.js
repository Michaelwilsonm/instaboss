$(document).ready(function() {
  $(document).on('page:change',function() {

    jQuery.fn.clickToggle = function(a,b) {
      function cb(){ [b,a][this._tog^=1].call(this); }
      return this.on("click", cb);
    };

    $(".search-btn>i").clickToggle(function(e){
      $(".search-btn").animate({marginRight: "190px"}, 500)
      $(".search-input").animate({marginRight: "20px"}, 500)
    }, function(){
      $(".search-btn").animate({marginRight: "20px"}, 500)
      $(".search-input").animate({marginRight: "-160px"}, 500)
    })

  });
});