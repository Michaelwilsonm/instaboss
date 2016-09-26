$(document).ready(function() {
  $(document).on('page:change', function () {

    // if (!Array.prototype.last){
    //   Array.prototype.last = function(){
    //       return this[this.length - 1];
    //   };
    // };

    womensLookCategories = {'Accessories': ['Lingerie & Underwear', 'Hats', 'Bags & Purses', 'Jewellery', 'Other'], 'Dresses': ['Day Dresses', 'Evening Dresses'], 'Jeans Trousers & Leggings': ['Jeans', 'Trousers','Leggings'], 'Home & Lifestyle': ['Home & Living'], 'Shoes': ['Boots', 'Trainers', 'Heels', 'Flats'], 'Shorts & Skirts': ['Shorts', 'Skirts'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'], 'Swim & Beachwear': ['Bikinis', 'Swimsuits', 'Other'], 'Tops': ['T-Shirts & Vests', 'Shirts & Blouses', 'Hoodies & Sweatshirts', 'Jackets & Coats'] };

    mensLookCategories = {'Accessories': ['Hats', 'Bags', 'Jewellery', 'Other'], 'Formal': ['Jackets & Coats','Suits', 'Accessories'], 'Lifestyle': ['Lifestyle'], 'Longs': ['Jeans', 'Chinos', 'Joggers'], 'Shoes': ['Boat & Loafers', 'Boots', 'Trainers', 'Formal', 'Other'], 'Shorts & Swimwear': ['Shorts', 'Swimwear'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'] , 'Tops': ['T-Shirts & Polos', 'Shirts', 'Hoodies & Sweatshirts', 'Jackets & Coats'] };

    // $(".gender-look").change(function(){
    //     $(".cat-look").children().remove()
    //     $(".sub-cat-look").children().remove()
    //   if ( $(this).val() == 'Mens' ){
    //     categories(mensLookCategories)
    //   } else if ( $(this).val() == 'Womens' ){
    //     categories(womensLookCategories)
    //   }
    // });


    // function changeCategories (_this, findCatClass, findSubCatClass){
    //   if (_this.val() === $("." + findCatClass).val() && $(".gender-look").val() =='Mens') {
    //     $("." + findSubCatClass).children().remove()
    //     subCategories(findCatClass, findSubCatClass, mensLookCategories)
    //   } else if (_this.val() === $("." + findCatClass).val() && $(".gender-look").val() == 'Womens') {
    //     $("." + findSubCatClass).children().remove()
    //     subCategories(findCatClass, findSubCatClass, womensLookCategories)
    //   }
    // }

    function categories(itemCategories, thisForm){
      if ($(".gender-look").val() == "Mens") {
        thisForm.append("<option value="+">"+"</option>");
        $.each( itemCategories, function( key, value ) {
          thisForm.append("<option value=" + key + ">"  +  key + "</option>");
        });
      }
    }

    $('#form-for-shop-look')
      .on('cocoon:before-insert', function(e,task_to_be_added) {
        task_to_be_added.fadeIn('slow');
      })
      .on('cocoon:after-insert', function(e, added_task) {
        var thisForm = added_task.find(".cat-look")
        categories(mensLookCategories, thisForm)
        thisForm.change(function(){
          var catVal = $(this).val()
          var subCat = $(this).next().next();
          subCategories(subCat, catVal, mensLookCategories)
        })
      })

    function subCategories(subCat, catVal, menCat){
      subCat.children().remove()
      $.each( menCat, function( key, value ) {
        if (key.includes(catVal)) {
          var subCategory = value;
          $.each( subCategory, function( index, subCatValues ) {
            subCat.append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
          });
        }
      });
    }



    // var textCount = 0
    // $(".add-shop-look-item").click(function(){
    //   textCount ++
    //   $(".form-3").toggle(100)
    //   if (textCount % 2 == 0) {
    //     $(this).text("Remove Item");
    //     $(this).addClass('btn-danger').removeClass('btn-success')
    //   } else {
    //     $(this).text("Add Item");
    //     $(this).addClass('btn-success').removeClass('btn-danger')
    //     $(".new-item-look-category-3").children().first().remove()
    //     $(".new-item-look-category-3").prepend("<option value=" + "" +">" + "" + "</option>")
    //     $(".new-item-look-sub-category-3").children().first().remove()
    //     $(".new-item-look-sub-category-3").prepend("<option value=" + "" +">" + "" + "</option>")
    //     $('.item-shop-the-look-3').val('');
    //   }
    // })

  });
});
