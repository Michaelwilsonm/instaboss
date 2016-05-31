$(document).ready(function() {
  $(document).on('page:change', function () {

    var womensCategories = {'Accessories': ['Lingerie & Underwear', 'Hats', 'Bags & Purses', 'Jewellery'], 'Dresses': ['Day Dresses', 'Evening Dresses'], 'Jeans Trousers & Leggings': ['Jeans', 'Trousers','Leggings'], 'Home & Lifestyle': ['Home & Lifestyle'], 'Shoes': ['Boots', 'Trainers', 'Heels', 'Wedges', 'Flats'], 'Shorts & Skirts': ['Shorts', 'Skirts'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'], 'Swim & Beachwear': ['Bikinis', 'Swimsuits', 'Other'], 'Tops': ['T-Shirts & Vests', 'Shirts & Blouses', 'Hoodies & Sweatshirts', 'Jackets & Coats', 'Formal'] };

    var mensCategories = {'Accessories': ['Underwear & Socks', 'Hats', 'Grooming', 'Jewellery'], 'Formal': ['Suits', 'Accessories'], 'Lifestyle': ['Lifestyle'], 'Longs': ['Jeans', 'Chinos', 'Joggers'], 'Shoes': ['Boat', 'Boots', 'Trainers', 'Formal', 'Other'], 'Shorts & Swimwear': ['Shorts', 'Swimwear'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'] , 'Tops': ['T-Shirts & Polos', 'Shirts', 'Hoodies & Sweatshirts', 'Jackets & Coats'] };

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
      $('#new-item-category').children().remove().end()
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
      $('#new-item-sub-category').children().remove().end()
      var sexNewItem = $('#new-item-sex').val();

      if ( sexNewItem === 'Mens' ) {
          $.each( mensCategories, function( key, value ) {
            if (key.includes( $("#new-item-category").val() ) ) {
              var subCategory = value;
              $.each( subCategory, function( index, value ) {
                $('#new-item-sub-category').append("<option value=" + value + ">" + value + "</option>");
              });
            }
          });
        } else if (sexNewItem === 'Womens') {
          $.each( womensCategories, function( key, value ) {
            if (key.includes( $("#new-item-category").val() ) ) {
              var subCategory = value;
              $.each( subCategory, function( index, value ) {
                $('#new-item-sub-category').append("<option value=" + value + ">" + value + "</option>");
              });
            }
          });
        }
    });
  });
});
