$(document).ready(function() {
  $(document).on('page:change', function () {

    if (!Array.prototype.last){
      Array.prototype.last = function(){
          return this[this.length - 1];
      };
    };

    womensLookCategories = {'Accessories': ['Lingerie & Underwear', 'Hats', 'Bags & Purses', 'Jewellery', 'Other'], 'Dresses': ['Day Dresses', 'Evening Dresses'], 'Jeans Trousers & Leggings': ['Jeans', 'Trousers','Leggings'], 'Home & Lifestyle': ['Home & Living'], 'Shoes': ['Boots', 'Trainers', 'Heels', 'Flats'], 'Shorts & Skirts': ['Shorts', 'Skirts'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'], 'Swim & Beachwear': ['Bikinis', 'Swimsuits', 'Other'], 'Tops': ['T-Shirts & Vests', 'Shirts & Blouses', 'Hoodies & Sweatshirts', 'Jackets & Coats'] };

    mensLookCategories = {'Accessories': ['Hats', 'Bags', 'Jewellery', 'Other'], 'Formal': ['Jackets & Coats','Suits', 'Accessories'], 'Lifestyle': ['Lifestyle'], 'Longs': ['Jeans', 'Chinos', 'Joggers'], 'Shoes': ['Boat & Loafers', 'Boots', 'Trainers', 'Formal', 'Other'], 'Shorts & Swimwear': ['Shorts', 'Swimwear'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'] , 'Tops': ['T-Shirts & Polos', 'Shirts', 'Hoodies & Sweatshirts', 'Jackets & Coats'] };

    function categories(className, itemCategories){
      $("." + className).children().remove()
      $.each( itemCategories, function( key, value ) {
        $("." + className).append("<option value=" + key + ">"  +  key + "</option>");
      });
    }

    $(".gender-look, .cat-look").change(function(){
      var classList = $(this).prop("classList")
      var classNumber = classList[classList.length-1].split("-").last()
      var findCatClass = 'new-item-look-category-' + classNumber
      var findSubCatClass = 'new-item-look-sub-category-' + classNumber
      var genderValue = $(".new-item-look-sex-" + classNumber).val()
      if ($(this).val() === 'Mens') {
        $("." + findSubCatClass).children().remove()
        categories(findCatClass, mensLookCategories)
      }else if ($(this).val() === $("." + findCatClass).val() && genderValue == 'Mens') {
        console.log("running")
        subLookCat(findCatClass, findSubCatClass, mensLookCategories)
      }else if ($(this).val() === 'Womens') {
        $("." + findSubCatClass).children().remove()
        categories(findCatClass, womensLookCategories)
      }else if ($(this).val() === $("." + findCatClass).val() && genderValue == 'Womens') {
        subLookCat(findCatClass, findSubCatClass, womensLookCategories)
      }
    });

    function subLookCat(findCatClass, findSubCatClass, cat){
      console.log("running")
      $("." + findSubCatClass).children().remove()
        $.each( cat, function( key, value ) {
          if (key.includes($("." + findCatClass).val())){
            var subCategory = value;
            $.each( subCategory, function( index, subCatValues ) {
              $("." + findSubCatClass).append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
            });
          }
        });
      }
  });
});
