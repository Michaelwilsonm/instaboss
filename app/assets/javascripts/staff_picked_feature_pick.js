$(document).ready(function() {

    $(".staff-true").click(function(e){
      $(this).html("Currently NOT Staff Picked<br>(click to change)")
      $(this).removeClass("btn-succes").addClass("btn-danger")
      var id = $(this).attr('id')
      $.ajax({
        method: "POST",
        url: "/admin/" + id + "/update_staff_true",
        success: function(data){
        },
        error : function(err){
        }
      })
    })

    $(".staff-false").click(function(e){
      $(this).html("Currently IS Staff Picked<br>(click to change)")
      $(this).removeClass("btn-danger").addClass("btn-success")
      var id = $(this).attr('id')
      $.ajax({
        method: "POST",
        url: "/admin/" + id + "/update_staff_false",
        success: function(data){
        },
        error : function(err){
        }
      })
    })

    $(".feature-true").click(function(e){
      $(this).html("Currently NOT Feature Picked<br>(click to change)")
      $(this).removeClass("btn-succes").addClass("btn-danger")
      var id = $(this).attr('id')
      $.ajax({
        method: "POST",
        url: "/admin/" + id + "/update_featured_true",
        success: function(data){
        },
        error : function(err){
        }
      })
    })

    $(".feature-false").click(function(e){
      $(this).html("Currently IS Feature Picked<br>(click to change)")
      $(this).removeClass("btn-danger").addClass("btn-success")
      var id = $(this).attr('id')
      $.ajax({
        method: "POST",
        url: "/admin/" + id + "/update_featured_false",
        success: function(data){
        },
        error : function(err){
        }
      })
    })


}); //end
