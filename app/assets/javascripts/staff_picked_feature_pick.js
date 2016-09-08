$(document).ready(function() {

    $(".staff-true").click(function(e){
      $(this).html("Currently NOT Staff Picked<br>(click to change)")
      $(this).removeClass("btn-succes").addClass("btn-danger")
      var id = $(this).attr('id')
      console.log("true")
      $.ajax({
        method: "POST",
        url: "/admin/" + id + "/update_staff_true",
        success: function(data){
          console.log('succes')
        },
        error : function(err){
          console.log("error" + err)
        }
      })
    })

    $(".staff-false").click(function(e){
      $(this).html("Currently IS Staff Picked<br>(click to change)")
      $(this).removeClass("btn-danger").addClass("btn-success")
      console.log("false")
      var id = $(this).attr('id')
      console.log(id)
      $.ajax({
        method: "POST",
        url: "/admin/" + id + "/update_staff_false",
        success: function(data){
          console.log('succes')
        },
        error : function(err){
          console.log("error" + err)
        }
      })
    })

    $(".feature-true").click(function(e){
      $(this).html("Currently NOT Feature Picked<br>(click to change)")
      $(this).removeClass("btn-succes").addClass("btn-danger")
      var id = $(this).attr('id')
      console.log("true")
      $.ajax({
        method: "POST",
        url: "/admin/" + id + "/update_featured_true",
        success: function(data){
          console.log('succes')
        },
        error : function(err){
          console.log("error" + err)
        }
      })
    })

    $(".feature-false").click(function(e){
      $(this).html("Currently IS Feature Picked<br>(click to change)")
      $(this).removeClass("btn-danger").addClass("btn-success")
      console.log("false")
      var id = $(this).attr('id')
      console.log(id)
      $.ajax({
        method: "POST",
        url: "/admin/" + id + "/update_featured_false",
        success: function(data){
          console.log('succes')
        },
        error : function(err){
          console.log("error" + err)
        }
      })
    })


}); //end
