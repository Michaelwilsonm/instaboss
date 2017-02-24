$(document).ready(function() {
  $(document).on('page:change', function () {

    if (!Array.prototype.last) {
      Array.prototype.last = function() {
          return this[this.length - 1];
      }
    }

    womensLookCategories = {'Accessories': ['Lingerie & Underwear', 'Hats', 'Bags & Purses', 'Jewellery', 'Other'], 'Dresses': ['Day Dresses', 'Evening Dresses', 'Playsuits'], 'Jeans Trousers & Leggings': ['Jeans', 'Trousers','Leggings'], 'Home & Lifestyle': ['Home & Living'], 'Shoes': ['Boots', 'Sneakers', 'Heels', 'Flats'], 'Shorts & Skirts': ['Shorts', 'Skirts'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'], 'Swim & Beachwear': ['Bikinis', 'Swimsuits', 'Other'], 'Tops': ['T-Shirts & Vests', 'Shirts & Blouses', 'Hoodies & Sweatshirts', 'Jackets & Coats'] };

    mensLookCategories = {'Accessories': ['Hats', 'Bags', 'Jewellery', 'Other'], 'Formal': ['Jackets & Coats','Suits', 'Accessories'], 'Lifestyle': ['Lifestyle'], 'Longs': ['Jeans', 'Chinos', 'Joggers'], 'Shoes': ['Boat & Loafers', 'Boots', 'Sneakers', 'Formal', 'Other'], 'Shorts & Swimwear': ['Shorts', 'Swimwear'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'] , 'Tops': ['Shirts & Polos', 'Tanks & Tees', 'Hoodies & Sweatshirts', 'Jackets & Coats'] };

    var formZeroSale0 = $("#shop_the_look_image_shop_the_look_items_attributes_0_sale");
    var formZeroSalePrice0 = $("#shop_the_look_image_shop_the_look_items_attributes_0_sale_price");

    var formZeroSale1 = $("#shop_the_look_image_shop_the_look_items_attributes_1_sale");
    var formZeroSalePrice1 = $("#shop_the_look_image_shop_the_look_items_attributes_1_sale_price");

    var formZeroSale2 = $("#shop_the_look_image_shop_the_look_items_attributes_2_sale");
    var formZeroSalePrice2 = $("#shop_the_look_image_shop_the_look_items_attributes_2_sale_price");

    var formZeroSale3 = $("#shop_the_look_image_shop_the_look_items_attributes_3_sale");
    var formZeroSalePrice3 = $("#shop_the_look_image_shop_the_look_items_attributes_3_sale_price");

    var formLength = $(".stl-form-wrapper").length;

    if (formLength === 1) {
      var shopLookSaleForm0Value = JSON.parse(formZeroSale0.val());
      editFormSaleDisplay(shopLookSaleForm0Value, formZeroSalePrice0);
    } else if (formLength === 2) {
      var shopLookSaleForm0Value = JSON.parse(formZeroSale0.val());
      var shopLookSaleForm1Value = JSON.parse(formZeroSale1.val());
      editFormSaleDisplay(shopLookSaleForm0Value, formZeroSalePrice0);
      editFormSaleDisplay(shopLookSaleForm1Value, formZeroSalePrice1);
    } else if (formLength === 3) {
      var shopLookSaleForm0Value = JSON.parse(formZeroSale0.val());
      var shopLookSaleForm1Value = JSON.parse(formZeroSale1.val());
      var shopLookSaleForm2Value = JSON.parse(formZeroSale2.val());
      editFormSaleDisplay(shopLookSaleForm0Value, formZeroSalePrice0);
      editFormSaleDisplay(shopLookSaleForm1Value, formZeroSalePrice1);
      editFormSaleDisplay(shopLookSaleForm2Value, formZeroSalePrice2);
    } else if (formLength === 4) {
      var shopLookSaleForm0Value = JSON.parse(formZeroSale0.val());
      var shopLookSaleForm1Value = JSON.parse(formZeroSale1.val());
      var shopLookSaleForm2Value = JSON.parse(formZeroSale2.val());
      var shopLookSaleForm3Value = JSON.parse(formZeroSale3.val());
      editFormSaleDisplay(shopLookSaleForm0Value, formZeroSalePrice0);
      editFormSaleDisplay(shopLookSaleForm1Value, formZeroSalePrice1);
      editFormSaleDisplay(shopLookSaleForm2Value, formZeroSalePrice2);
      editFormSaleDisplay(shopLookSaleForm3Value, formZeroSalePrice3);
    }

    function editFormSaleDisplay(bool, salePriceDiv) {
      bool ? salePriceDiv.parent().parent().show() : salePriceDiv.parent().parent().hide();
    }

    var formCategory0 = $("#shop_the_look_image_shop_the_look_items_attributes_0_category");
    var formSubCat0 = $("#shop_the_look_image_shop_the_look_items_attributes_0_sub_category");

    formCategory0.change(function(){
      formSubCat0.children().remove();
        var catValue = formCategory0.val();
      if ($(".gender-look").val() == 'Mens') {
        $.each( mensLookCategories, function( key, value ) {
          if (key.includes(catValue)) {
            var subCategory = value;
            $.each( subCategory, function( index, subCatValues ) {
              formSubCat0.append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
            });
          }
        });
      } else if ($(".gender-look").val() == 'Womens') {
        $.each( womensLookCategories, function( key, value ) {
          if (key.includes(catValue)) {
            var subCategory = value;
            $.each( subCategory, function( index, subCatValues ) {
              formSubCat0.append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
            });
          }
        });
      }
    });

    var formCategory1 = $("#shop_the_look_image_shop_the_look_items_attributes_1_category");
    var formSubCat1 = $("#shop_the_look_image_shop_the_look_items_attributes_1_sub_category");

    formCategory1.change(function(){
      formSubCat1.children().remove();
        var catValue = formCategory1.val();
      if ($(".gender-look").val() == 'Mens') {
        $.each( mensLookCategories, function( key, value ) {
          if (key.includes(catValue)) {
            var subCategory = value;
            $.each( subCategory, function( index, subCatValues ) {
              formSubCat1.append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
            });
          }
        });
      } else if ($(".gender-look").val() == 'Womens') {
        $.each( womensLookCategories, function( key, value ) {
          if (key.includes(catValue)) {
            var subCategory = value;
            $.each( subCategory, function( index, subCatValues ) {
              formSubCat1.append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
            });
          }
        });
      }
    });

    var formCategory2 = $("#shop_the_look_image_shop_the_look_items_attributes_2_category");
    var formSubCat2 = $("#shop_the_look_image_shop_the_look_items_attributes_2_sub_category");

    formCategory2.change(function(){
      formSubCat2.children().remove();
        var catValue = formCategory2.val();
      if ($(".gender-look").val() == 'Mens') {
        $.each( mensLookCategories, function( key, value ) {
          if (key.includes(catValue)) {
            var subCategory = value;
            $.each( subCategory, function( index, subCatValues ) {
              formSubCat2.append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
            });
          }
        });
      } else if ($(".gender-look").val() == 'Womens') {
        $.each( womensLookCategories, function( key, value ) {
          if (key.includes(catValue)) {
            var subCategory = value;
            $.each( subCategory, function( index, subCatValues ) {
              formSubCat2.append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
            });
          }
        });
      }
    });

    var formCategory3 = $("#shop_the_look_image_shop_the_look_items_attributes_3_category");
    var formSubCat3 = $("#shop_the_look_image_shop_the_look_items_attributes_3_sub_category");

    formCategory3.change(function(){
      formSubCat3.children().remove();
        var catValue = formCategory3.val()
      if ($(".gender-look").val() == 'Mens') {
        $.each( mensLookCategories, function( key, value ) {
          if (key.includes(catValue)) {
            var subCategory = value;
            $.each( subCategory, function( index, subCatValues ) {
              formSubCat3.append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
            });
          }
        });
      } else if ($(".gender-look").val() == 'Womens') {
        $.each( womensLookCategories, function( key, value ) {
          if (key.includes(catValue)) {
            var subCategory = value;
            $.each( subCategory, function( index, subCatValues ) {
              formSubCat3.append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
            });
          }
        });
      }
    });

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
        $(".remove_fields").click(function(){
          $(".add_fields").show()
        })
        var addFourMaxLength = $(".stl-form-wrapper").length;
        if (addFourMaxLength > 3) {
          $(".add_fields").hide()
        }else{
          $(".add_fields").show()
        }
        var thisForm = added_task.find(".cat-look");
        var thisSaleForm = added_task.find(".shop-look-sale");
        categories(mensLookCategories, womensLookCategories, thisForm);
        thisSaleForm.change(function(){
          var str = $(this).val()
          var myBool = JSON.parse(str);
          myBool ? $(this).parent().next().show() : $(this).parent().next().hide();
        });
        thisForm.change(function(){
          var catVal = $(this).val();
          var subCat = $(this).next().next();
          subCategories(subCat, catVal, mensLookCategories, womensLookCategories);
        });
      });

    $(".shop-look-sale").change(function(){
      if ($(this).val() === "true") {
        $(this).parent().next().show();
      } else {
        $(this).parent().next().hide();
      }
    });

    $(".gender-look").change(function(){
        $(".cat-look").children().remove();
        $(".sub-cat-look").children().remove();
      if ( $(this).val() == 'Mens' ){
        genderChange(mensLookCategories);
      } else if ( $(this).val() == 'Womens' ) {
        genderChange(womensLookCategories);
      }
    });

    if ($('.gender-look').val() == "Womens") {
      changeEditCats(womensLookCategories);
    }else if ($('.gender-look').val() == "Mens") {
      changeEditCats(mensLookCategories);
    }

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

  });
});
