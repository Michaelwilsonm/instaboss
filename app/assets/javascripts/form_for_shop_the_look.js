$(document).ready(function() {
  $(document).on('page:change', function () {
    womensLookCategories = {'Accessories': ['Lingerie & Underwear', 'Hats', 'Bags & Purses', 'Jewellery', 'Other'], 'Dresses': ['Day Dresses', 'Evening Dresses'], 'Jeans Trousers & Leggings': ['Jeans', 'Trousers','Leggings'], 'Home & Lifestyle': ['Home & Living'], 'Shoes': ['Boots', 'Trainers', 'Heels', 'Flats'], 'Shorts & Skirts': ['Shorts', 'Skirts'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'], 'Swim & Beachwear': ['Bikinis', 'Swimsuits', 'Other'], 'Tops': ['T-Shirts & Vests', 'Shirts & Blouses', 'Hoodies & Sweatshirts', 'Jackets & Coats'] };

    mensLookCategories = {'Accessories': ['Hats', 'Bags', 'Jewellery', 'Other'], 'Formal': ['Jackets & Coats','Suits', 'Accessories'], 'Lifestyle': ['Lifestyle'], 'Longs': ['Jeans', 'Chinos', 'Joggers'], 'Shoes': ['Boat & Loafers', 'Boots', 'Trainers', 'Formal', 'Other'], 'Shorts & Swimwear': ['Shorts', 'Swimwear'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'] , 'Tops': ['T-Shirts & Polos', 'Shirts', 'Hoodies & Sweatshirts', 'Jackets & Coats'] };

    if (!Array.prototype.last){
      Array.prototype.last = function(){
          return this[this.length - 1];
      };
    };

    $('#form-for-shop-look')
      .on('cocoon:before-insert', function(e,task_to_be_added) {
        task_to_be_added.fadeIn('slow');
      })
      .on('cocoon:after-insert', function(e, added_task) {
        var thisForm = added_task.find(".cat-look")
        categories(mensLookCategories, womensLookCategories, thisForm)

        thisForm.change(function(){
          var catVal = $(this).val()
          var subCat = $(this).next().next();
          subCategories(subCat, catVal, mensLookCategories, womensLookCategories)
        })
      })

    $(".gender-look").change(function(){
        $(".cat-look").children().remove()
        $(".sub-cat-look").children().remove()
      if ( $(this).val() == 'Mens' ){
        genderChange(mensLookCategories)
      } else if ( $(this).val() == 'Womens' ){
        genderChange(womensLookCategories)
      }
    });

    function genderChange(catMenWomen) {
      $(".cat-look").append("<option value="+">"+"</option>");
      $.each( catMenWomen, function( key, value ) {
        $(".cat-look").append("<option value=" + key + ">"  +  key + "</option>");
      });
    }

    function categories(menCat, womenCat, thisForm){
      if ($(".gender-look").val() == "Mens") {
        thisForm.append("<option value="+">"+"</option>");
        $.each( menCat, function( key, value ) {
          thisForm.append("<option value=" + key + ">"  +  key + "</option>");
        });
      } else if ($(".gender-look").val() == "Womens") {
        thisForm.append("<option value="+">"+"</option>");
        $.each( womenCat, function( key, value ) {
          thisForm.append("<option value=" + key + ">"  +  key + "</option>");
        });
      }
    }

    function subCategories(subCat, catVal, menCat, womenCat){
      subCat.children().remove()
      if ($(".gender-look").val() == 'Mens') {
        findSubCat(menCat, catVal, subCat)
      } else if ($(".gender-look").val() == 'Womens') {
        findSubCat(womenCat, catVal, subCat)
      }
    }

    function findSubCat(catMenWomen, catVal, subCat) {
      $.each( catMenWomen, function( key, value ) {
        if (key.includes(catVal)) {
          var subCategory = value;
          $.each( subCategory, function( index, subCatValues ) {
            subCat.append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
          });
        }
      });
    }


  });
});
