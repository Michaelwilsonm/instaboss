$(document).ready(function() {
  $(document).on('page:change',function() {

    var hoverClient = (function(){
      var $clientNav = $(".client-nav");
      var $clientDropDown = $(".client-dropdown");
      var $arrowDown = $(".arrow-down-client");

      $clientNav.hover(clientMenuDown, clientMenuUp)

      function clientMenuDown(){
        $arrowDown.toggleClass('arrow-active');
        $clientDropDown.stop().fadeIn(300);
      }

      function clientMenuUp(){
        $arrowDown.toggleClass('arrow-active');
        $clientDropDown.stop().fadeOut(300);
      }
    })();

    var hoverAdmin = (function(){
      var $adminNav = $(".admin-nav");
      var $adminDropDown = $(".admin-dropdown");
      var $arrowDown = $(".arrow-down-admin");

      $adminNav.hover(adminMenuDown, adminMenuUp);

      function adminMenuDown(){
        $arrowDown.toggleClass('arrow-active');
        $adminDropDown.stop().fadeIn(300);
      }

      function adminMenuUp(){
        $arrowDown.toggleClass('arrow-active');
        $adminDropDown.stop().fadeOut(300);
      }

    })();
  })
})