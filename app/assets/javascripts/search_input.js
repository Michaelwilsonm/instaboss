$(document).ready(function() {
  $(document).on('page:change',function() {

    jQuery.fn.clickToggle = function(a,b) {
      function cb(){ [b,a][this._tog^=1].call(this); }
      return this.on("click", cb);
    };

    $(".search-btn>i").clickToggle(function(e){
      $(".search-btn").animate({right: "172px"}, 500)
      $(".search-input").animate({right: "10px"}, 500)
    }, function(){
      $(".search-btn").animate({right: "30px"}, 500)
      $(".search-input").animate({right: "-152px"}, 500)
    })

  });
});