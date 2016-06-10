$(document).ready(function() {
  $(document).on('page:change', function () {

    var womensCategories = {'Accessories': ['Lingerie & Underwear', 'Hats', 'Bags & Purses', 'Jewellery'], 'Dresses': ['Day Dresses', 'Evening Dresses'], 'Jeans Trousers & Leggings': ['Jeans', 'Trousers','Leggings'], 'Home & Lifestyle': ['Home & Lifestyle'], 'Shoes': ['Boots', 'Trainers', 'Heels', 'Wedges', 'Flats'], 'Shorts & Skirts': ['Shorts', 'Skirts'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'], 'Swim & Beachwear': ['Bikinis', 'Swimsuits', 'Other'], 'Tops': ['T-Shirts & Vests', 'Shirts & Blouses', 'Hoodies & Sweatshirts', 'Jackets & Coats', 'Formal'] };

    var mensCategories = {'Accessories': ['Underwear & Socks', 'Hats', 'Grooming', 'Jewellery'], 'Formal': ['Suits', 'Accessories'], 'Lifestyle': ['Lifestyle'], 'Longs': ['Jeans', 'Chinos', 'Joggers'], 'Shoes': ['Boat', 'Boots', 'Trainers', 'Formal', 'Other'], 'Shorts & Swimwear': ['Shorts', 'Swimwear'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'] , 'Tops': ['T-Shirts & Polos', 'Shirts', 'Hoodies & Sweatshirts', 'Jackets & Coats'] };

      // if the value in the form is changed to "Mens" append the objects keys to the item category option
    if ($("#new-item-sex").val() === 'Mens') {
      $.each( mensCategories, function( key, value ) {
        $('#new-item-category').append("<option value=" + key + ">"  +  key + "</option>");
      });

      // if womens do same but for womens
    } else if ($("#new-item-sex").val() === 'Womens') {
      $.each( womensCategories, function( key, value ) {
        $('#new-item-category').append("<option value=" + key + ">" + key + "</option>");
      });
    }

    //if the sex changes remove all of the options in categorys and it's children
    $("#new-item-sex").change(function(){
      $('#new-item-category').children().remove()
      var sexNewItem = $('#new-item-sex').val();
      //get new sex value "mens or womens"
      if ( sexNewItem === 'Mens') {
        $.each( mensCategories, function( key, value ) {
          $('#new-item-category').append("<option value=" + key + ">" + key + "</option>");
        });
        // same as above, append values to option
      } else if (sexNewItem === 'Womens') {
        $.each( womensCategories, function( key, value ) {
          $('#new-item-category').append("<option value=" + key + ">" + key + "</option>");
        });
      }
    });

    // if the category or sex values change, change the subcategory values
    $("#new-item-category, #new-item-sex").change(function(){
      $('#new-item-sub-category').children().remove()
      var sexNewItem = $('#new-item-sex').val();

      if ( sexNewItem === 'Mens' ) {
          $.each( mensCategories, function( key, value ) {
            if (key.includes( $("#new-item-category").val() ) ) {
              var subCategory = value;
              $.each( subCategory, function( index, subCatValues ) {
                $('#new-item-sub-category').append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
              });
            }
          });
        } else if (sexNewItem === 'Womens') {
          $.each( womensCategories, function( key, value ) {
            if (key.includes( $("#new-item-category").val() ) ) {
              var subCategory = value;
              $.each( subCategory, function( index, subCatValues ) {
                $('#new-item-sub-category').append("<option value=" + subCatValues + ">" + subCatValues + "</option>");
              });
            }
          });
        }
    });

    //item on sale id changes

    $("#item-on-sale").change(function(){
      if ($("#item-on-sale").val() === 'true' ) {
        $('#item-sale-price').show();
        //show the sale price form
      } else if ($("#item-on-sale").val() === 'false' ) {
        $('#item-sale-price').hide();
      }
      //else hide it
    });

    //hide it at the beginning of page
    if ($("#item-on-sale").val() === 'false' ) {
      $('#item-sale-price').hide();
    }

  });
});
