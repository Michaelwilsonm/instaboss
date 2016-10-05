$(document).ready(function() {
  $(document).on('page:change', function () {
    womensLookCategories = {'Accessories': ['Lingerie & Underwear', 'Hats', 'Bags & Purses', 'Jewellery', 'Other'], 'Dresses': ['Day Dresses', 'Evening Dresses'], 'Jeans Trousers & Leggings': ['Jeans', 'Trousers','Leggings'], 'Home & Lifestyle': ['Home & Living'], 'Shoes': ['Boots', 'Trainers', 'Heels', 'Flats'], 'Shorts & Skirts': ['Shorts', 'Skirts'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'], 'Swim & Beachwear': ['Bikinis', 'Swimsuits', 'Other'], 'Tops': ['T-Shirts & Vests', 'Shirts & Blouses', 'Hoodies & Sweatshirts', 'Jackets & Coats'] };

    mensLookCategories = {'Accessories': ['Hats', 'Bags', 'Jewellery', 'Other'], 'Formal': ['Jackets & Coats','Suits', 'Accessories'], 'Lifestyle': ['Lifestyle'], 'Longs': ['Jeans', 'Chinos', 'Joggers'], 'Shoes': ['Boat & Loafers', 'Boots', 'Trainers', 'Formal', 'Other'], 'Shorts & Swimwear': ['Shorts', 'Swimwear'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'] , 'Tops': ['T-Shirts & Polos', 'Shirts', 'Hoodies & Sweatshirts', 'Jackets & Coats'] };

    if ($('.gender-look').val() == "Womens") {
      changeEditCats(womensLookCategories);
    }else if ($('.gender-look').val() == "Mens") {
      changeEditCats(mensLookCategories);
    }


    if (!Array.prototype.last) {
      Array.prototype.last = function() {
          return this[this.length - 1];
      };
    };

    $("#shop_the_look_image_shop_the_look_items_attributes_0_category").change(function(){
      $("#shop_the_look_image_shop_the_look_items_attributes_0_sub_category").children().remove();
        var catValue = $("#shop_the_look_image_shop_the_look_items_attributes_0_category").val()
      if ($(".gender-look").val() == 'Mens') {
        $.each( mensLookCategories, function( key, value ) {
          if (key.includes(catValue)) {
            var subCategory = value;
            $.each( subCategory, function( index, subCatValues ) {
              $("#shop_the_look_image_shop_the_look_items_attributes_0_sub_category").append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
            });
          }
        });
      } else if ($(".gender-look").val() == 'Womens') {
        $.each( womensLookCategories, function( key, value ) {
          if (key.includes(catValue)) {
            var subCategory = value;
            $.each( subCategory, function( index, subCatValues ) {
              $("#shop_the_look_image_shop_the_look_items_attributes_0_sub_category").append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
            });
          }
        });
      }
    })

    $("#shop_the_look_image_shop_the_look_items_attributes_1_category").change(function(){
      $("#shop_the_look_image_shop_the_look_items_attributes_1_sub_category").children().remove();
        var catValue = $("#shop_the_look_image_shop_the_look_items_attributes_1_category").val()
      if ($(".gender-look").val() == 'Mens') {
        $.each( mensLookCategories, function( key, value ) {
          if (key.includes(catValue)) {
            var subCategory = value;
            $.each( subCategory, function( index, subCatValues ) {
              $("#shop_the_look_image_shop_the_look_items_attributes_1_sub_category").append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
            });
          }
        });
      } else if ($(".gender-look").val() == 'Womens') {
        $.each( womensLookCategories, function( key, value ) {
          if (key.includes(catValue)) {
            var subCategory = value;
            $.each( subCategory, function( index, subCatValues ) {
              $("#shop_the_look_image_shop_the_look_items_attributes_1_sub_category").append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
            });
          }
        });
      }
    })

    $("#shop_the_look_image_shop_the_look_items_attributes_2_category").change(function(){
      $("#shop_the_look_image_shop_the_look_items_attributes_2_sub_category").children().remove();
        var catValue = $("#shop_the_look_image_shop_the_look_items_attributes_2_category").val()
      if ($(".gender-look").val() == 'Mens') {
        $.each( mensLookCategories, function( key, value ) {
          if (key.includes(catValue)) {
            var subCategory = value;
            $.each( subCategory, function( index, subCatValues ) {
              $("#shop_the_look_image_shop_the_look_items_attributes_2_sub_category").append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
            });
          }
        });
      } else if ($(".gender-look").val() == 'Womens') {
        $.each( womensLookCategories, function( key, value ) {
          if (key.includes(catValue)) {
            var subCategory = value;
            $.each( subCategory, function( index, subCatValues ) {
              $("#shop_the_look_image_shop_the_look_items_attributes_2_sub_category").append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
            });
          }
        });
      }
    })

    function changeEditCats(categoriesMensOrWomens){
      $(".cat-look").append("<option value=''>"+"</option>");
      $.each( categoriesMensOrWomens, function( key, value ) {
        $(".cat-look").append("<option value=" + key + ">"  +  key + "</option>");
      });
    }

    $('#form-for-shop-look')
      .on('cocoon:before-insert', function(e,task_to_be_added) {
        task_to_be_added.fadeIn('slow');
      })
      .on('cocoon:after-insert', function(e, added_task) {
        var thisForm = added_task.find(".cat-look");
        categories(mensLookCategories, womensLookCategories, thisForm);


        // $(".shop-look-sale").change(function(){
        //   var saleVal = $(this).val()
        //   if (saleVal == "true") {
        //     $(this).next().next().css({display: "block"})
        //   } else if (saleVal == "false") {
        //     $(this).next().next().css({display: "none"})
        //   }
        // })

        thisForm.change(function(){
          var catVal = $(this).val();
          var subCat = $(this).next().next();
          subCategories(subCat, catVal, mensLookCategories, womensLookCategories);

        })
      })

    $(".gender-look").change(function(){
        $(".cat-look").children().remove();
        $(".sub-cat-look").children().remove();
      if ( $(this).val() == 'Mens' ){
        genderChange(mensLookCategories);
      } else if ( $(this).val() == 'Womens' ) {
        genderChange(womensLookCategories);
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
        thisForm.append("<option value=''>"+"</option>");
        $.each( menCat, function( key, value ) {
          thisForm.append("<option value=" + key + ">"  +  key + "</option>");
        });
      } else if ($(".gender-look").val() == "Womens") {
        thisForm.append("<option value=''>"+"</option>");
        $.each( womenCat, function( key, value ) {
          thisForm.append("<option value=" + key + ">"  +  key + "</option>");
        });
      }
    }

    function subCategories(subCat, catVal, menCat, womenCat){
      subCat.children().remove();
      if ($(".gender-look").val() == 'Mens') {
        findSubCat(menCat, catVal, subCat);
      } else if ($(".gender-look").val() == 'Womens') {
        findSubCat(womenCat, catVal, subCat);
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




    if ($(".error-handling-js").hasClass("error")) {
      $('.shop-the-look-new-form').validate({
        rules: {
          'shop_the_look_image[shop_look_image]' : {
            required: true
          }
        }
      });
    }




  });
});
