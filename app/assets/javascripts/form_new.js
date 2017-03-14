$(document).ready(function() {
  $(document).on('page:change', function () {
    var womensCategories = {'Accessories': ['Lingerie & Underwear', 'Hats', 'Bags & Purses', 'Jewellery', 'Other'], 'Dresses': ['Day Dresses', 'Evening Dresses', 'Playsuits'], 'Jeans Trousers & Leggings': ['Jeans', 'Trousers','Leggings'], 'Home & Lifestyle': ['Home & Living'], 'Shoes': ['Boots', 'Sneakers', 'Heels', 'Flats'], 'Shorts & Skirts': ['Shorts', 'Skirts'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'], 'Swim & Beachwear': ['Bikinis', 'Swimsuits', 'Other'], 'Tops': ['T-Shirts & Vests', 'Shirts & Blouses', 'Hoodies & Sweatshirts', 'Jackets & Coats'] };

    var mensCategories = {'Accessories': ['Hats', 'Bags', 'Jewellery', 'Other'], 'Formal': ['Jackets & Coats','Suits', 'Accessories'], 'Lifestyle': ['Lifestyle'], 'Longs': ['Jeans', 'Chinos', 'Joggers'], 'Shoes': ['Boat & Loafers', 'Boots', 'Sneakers', 'Formal', 'Other'], 'Shorts & Swimwear': ['Shorts', 'Swimwear'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'] , 'Tops': ['Tanks & Tees', 'Shirts & Polos', 'Hoodies & Sweatshirts', 'Jackets & Coats'] };

    if ($("#new-item-sex").val() === 'Mens') {
      $.each( mensCategories, function( key, value ) {
        $('#new-item-category').append("<option value=" + key + ">"  +  key + "</option>");
      });
    } else if ($("#new-item-sex").val() === 'Womens') {
      $.each( womensCategories, function( key, value ) {
        $('#new-item-category').append("<option value=" + key + ">" + key + "</option>");
      });
    }
    $("#new-item-sex").change(function(){
      $('#new-item-category').children().remove()
      var sexNewItem = $('#new-item-sex').val();
      if ( sexNewItem === 'Mens') {
        $.each( mensCategories, function( key, value ) {
          $('#new-item-category').append("<option value=" + key + ">" + key + "</option>");
        });
      } else if (sexNewItem === 'Womens') {
        $.each( womensCategories, function( key, value ) {
          $('#new-item-category').append("<option value=" + key + ">" + key + "</option>");
        });
      }
    });
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
  });
});
