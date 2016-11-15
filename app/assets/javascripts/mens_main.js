$(document).ready(function() {
  $(document).on('page:change',function() {

    scrollingFixedNav = (function(){
      var bannerTitle = $(".desktop-categories")
      var categorySubCats = $(".categorise")

      $(window).scroll(toggleNavigation)

      function toggleNavigation(){
        var windowScroll = $(window).scrollTop();
        if (windowScroll > 333) {
          navigationFixed()
        } else if (windowScroll < 333) {
          navigationAbsolute()
        }
      }

      function navigationFixed(){
        bannerTitle.addClass("scroll-fixed-categories")
        categorySubCats.addClass("scroll-fixed-categorise")
      }

      function navigationAbsolute(){
        bannerTitle.removeClass("scroll-fixed-categories")
        categorySubCats.removeClass("scroll-fixed-categorise");
      }
    });
    scrollingFixedNav()


  });
});