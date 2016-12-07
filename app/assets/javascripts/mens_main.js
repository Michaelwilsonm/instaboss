$(document).ready(function() {
  $(document).on('page:change',function() {

    var scrollingFixedNav = (function(){
      var $bannerTitle = $(".desktop-categories")
      var $mobBanner = $(".mobile-categories")
      var $categorySubCats = $(".categorise")

      $(window).scroll(toggleNavigation)
      $(window).scroll(toggleMobileNavigation)

      function toggleMobileNavigation(){
        var windowScroll = $(this).scrollTop();
        if (windowScroll > 300) {
          $mobBanner.css({position: 'fixed', top: "125px"})
        } else if (windowScroll < 300) {
          $mobBanner.css({position: 'absolute', top: "430px"})
        }
      }

      function toggleNavigation(){
        var windowScroll = $(this).scrollTop();
        if (windowScroll > 350) {
          navigationFixed()
        } else if (windowScroll < 350) {
          navigationAbsolute()
        }
      }

      function navigationFixed(){
        $bannerTitle.addClass("scroll-fixed-categories")
        $categorySubCats.addClass("scroll-fixed-categorise")
      }

      function navigationAbsolute(){
        $bannerTitle.removeClass("scroll-fixed-categories")
        $categorySubCats.removeClass("scroll-fixed-categorise");
      }
    });
    scrollingFixedNav()


  });
});