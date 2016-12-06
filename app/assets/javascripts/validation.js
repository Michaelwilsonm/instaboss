$(document).ready(function() {
  $(document).on('page:change',function() {

    $('.fashion_item_form').validate({
      rules: {
        'FashionItem[short_description]' : {
          required: true,
          maxlength: 25
        },
        'FashionItem[item_image]' : {
          required: true
        },
        'FashionItem[category]': {
          required: true
        },
        'FashionItem[sub_category]': {
          required: true
        },
        'FashionItem[price]': {
          required: true,
          number : true
        },
        'FashionItem[unique_affiliate_url]': {
          required: true
        }
      }
    });

    $('.edit_fashion_item').validate({
      rules: {
        'FashionItem[short_description]' : {
          required: true,
          maxlength: 25
        },
        'FashionItem[item_image]' : {
          required: false
        },
        'FashionItem[category]': {
          required: true
        },
        'FashionItem[sub_category]': {
          required: true
        },
        'FashionItem[price]': {
          required: true,
          number : true
        },
        'FashionItem[unique_affiliate_url]': {
          required: true
        }
      }
    });

  });
});