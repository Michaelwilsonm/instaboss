$(document).ready(function() {
  $(document).on('page:change', function () {
    var womensCategories = {'Accessories': ['Lingerie & Underwear', 'Hats', 'Bags & Purses', 'Jewellery', 'Other'], 'Dresses': ['Day Dresses', 'Evening Dresses', 'Playsuits'], 'Jeans Trousers & Leggings': ['Jeans', 'Trousers','Leggings'], 'Home & Lifestyle': ['Home & Lifestyle'], 'Shoes': ['Boots', 'Trainers', 'Heels', 'Flats'], 'Shorts & Skirts': ['Shorts', 'Skirts'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'], 'Swim & Beachwear': ['Bikinis', 'Swimsuits', 'Other'], 'Tops': ['T-Shirts & Vests', 'Shirts & Blouses', 'Hoodies & Sweatshirts', 'Jackets & Coats'] };

    var mensCategories = {'Accessories': ['Hats', 'Bags', 'Jewellery', 'Other'], 'Formal': ['Jackets & Coats','Suits', 'Accessories'], 'Lifestyle': ['Lifestyle'], 'Longs': ['Jeans', 'Chinos', 'Joggers'], 'Shoes': ['Boat & Loafers', 'Boots', 'Trainers', 'Formal', 'Other'], 'Shorts & Swimwear': ['Shorts', 'Swimwear'], 'Sunglasses & Watches': ['Sunglasses', 'Watches'] , 'Tops': ['T-Shirts & Polos', 'Shirts', 'Hoodies & Sweatshirts', 'Jackets & Coats'] };

    var sex = $('#item-sex').val();
    var category = $('#item-category').val();
    var itemSubCategory = $('.item-new-category').data('temp');

    if ( sex === 'Mens' ) {
     $.each( mensCategories, function( key, value ) {
        if (key === category) {
          var subCategory = value;
          $.each( subCategory, function( index, value ) {
            if (value !== itemSubCategory) {
             $('#item-new-category').append("<option value=" + value + ">" + value + "</option>");
            }
          });
        }
     });
    } else if (sex == 'Womens') {
      $.each( womensCategories, function( key, value ) {
        if (key === category) {
          var subCategory = value;
          $.each( subCategory, function( index, value ) {
            if (value !== itemSubCategory) {
             $('#item-new-category').append("<option value=" + value + ">" + value + "</option>");
            }
          });
        }
     });
    }

    $("#item-category").change(function(){
      $('#item-sub-category').children().remove().end()
        if ( sex === 'Mens' ) {
          $.each( mensCategories, function( key, value ) {
            if (key === $("#item-category").val()) {
              var subCategory = value;
              $.each( subCategory, function( index, value ) {
                if (value !== itemSubCategory) {
                  $('#item-sub-category').append("<option value=" + value + ">" + value + "</option>");
                }
              });
            }
          });
        } else if (sex === 'Womens') {
          $.each( womensCategories, function( key, value ) {
            if (key === $("#item-category").val()) {
              var subCategory = value;
              $.each( subCategory, function( index, value ) {
                if (value !== itemSubCategory) {
                  $('#item-sub-category').append("<option value=" + value + ">" + value + "</option>");
                }
              });
            }
          });
        }
      });

    var toggleSalePriceDuration = (function() {
      var $sale = $("#item-on-sale");
      var $saleDuration = $("#item-sale-duration");
      var $salePrice = $("#item-sale-price");

      $sale.change(hideShowFields);
      displaySaleFields()

      function hideShowFields() {
        if ($sale.val() === 'true') {
          showFields();
        } else if ($sale.val() === 'false') {
          hideFields();
        }
      }

      function showFields(){
        $saleDuration.show();
        $salePrice.show();
      }

      function hideFields(){
        $saleDuration.hide();
        $salePrice.hide();
      }

      function displaySaleFields() {
        if ($sale.val() === 'false') {
          hideFields()
        }
      }
    });
    toggleSalePriceDuration();

  });
});
