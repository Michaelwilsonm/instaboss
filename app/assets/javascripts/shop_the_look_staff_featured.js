$(document).on('page:change', function() {


  $(".staff-shop-true").click(function(e){
    e.preventDefault()
    $(this).html("Currently NOT Staff Picked<br>(click to change)")
    $(this).removeClass("btn-succes").addClass("btn-danger")
    var id = $(this).attr('id')
    $.ajax({
      method: "POST",
      url: "/admin/" + id + "/update_shop_staff_true",
      success: function(data){
      },
      error : function(err){
      }
    })
  })

  $(".staff-shop").click(function(e){
    e.preventDefault()
    $(this).html("Currently IS Staff Picked<br>(click to change)")
    $(this).removeClass("btn-danger").addClass("btn-success")
    var id = $(this).attr('id')
    $.ajax({
      method: "POST",
      url: "/admin/" + id + "/update_shop_staff_false",
      success: function(data){
      },
      error : function(err){
      }
    })
  })

  $(".feature-shop-true").click(function(e){
    console.log("feature-true")
    e.preventDefault()
    $(this).html("Currently NOT Feature Picked<br>(click to change)")
    $(this).removeClass("btn-succes").addClass("btn-danger")
    var id = $(this).attr('id')
    $.ajax({
      method: "POST",
      url: "/admin/" + id + "/update_shop_featured_true",
      success: function(data){
      },
      error : function(err){
      }
    })
  })

  $(".feature-shop").click(function(e){
    console.log("feature-false")
    e.preventDefault()
    $(this).html("Currently IS Feature Picked<br>(click to change)")
    $(this).removeClass("btn-danger").addClass("btn-success")
    var id = $(this).attr('id')
    $.ajax({
      method: "POST",
      url: "/admin/" + id + "/update_shop_featured_false",
      success: function(data){
      },
      error : function(err){
      }
    })
  })

});
