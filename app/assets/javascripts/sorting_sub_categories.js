$(document).ready(function() {
  $(document).on('page:change', function () {

    var sortSubCategories = (function(){
      var $box = $(".box");
      var $mobileCategories = $(".sorting_class>li");
      var $desktopCategories = $(".sorting-class-desktop>li");
      //click handler
      $mobileCategories.click(handleClickMob);
      $desktopCategories.click(handleClickDesktop);

      function handleClickDesktop(){
        var subCategory = $(this.id).selector;
        $desktopCategories.removeClass("categorie-sort");
        $(this).addClass("categorie-sort");
        sortCategories(subCategory);
      }

      function handleClickMob(){
        var subCategory = $(this.id).selector;
        $mobileCategories.removeClass("btn-active");
        $(this).addClass("btn-active");
        sortCategories(subCategory);
      }

      function sortCategories(subCategory){
        var removeBox = $box.css({"display": "none"});
        if ($box.hasClass(subCategory)){
          removeBox
          $("." + subCategory).slideDown(0);
        } else if (subCategory == "All"){
          $box.show();
        }
      }
    })
    sortSubCategories();

    var showSortItems = (function(){
      var $categorieHeader = $(".all-categories>h1");
      var $listElements = $(".sorting-class-desktop");
      //click handler
      $categorieHeader.click(showList)

      function showList(){
        $listElements.stop().slideToggle(100)
      }
    });
    showSortItems();

  });
});