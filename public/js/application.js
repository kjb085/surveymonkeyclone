$(document).ready(function() {

    $(".login_btn").on("click", function(event){
      event.preventDefault();
      console.log("you clicked!")
      $(".login_form").toggle();
    });

    $(".signup_btn").on("click", function(event){
      event.preventDefault();
      console.log("you clicked!")
      $(".signup_form").toggle();
    });

    $(".add_btn").on("click", function(event){
      event.preventDefault();
      console.log("you clicked!")
      $(".new_post").toggle();
    });


    $(".login_ajax").on("submit", function(event){
      event.preventDefault();
      var $form = $(event.target);
      $.ajax({
        url:  $form.attr('action'),
        type: $form.attr('method'),
        data: $form.serialize(),
        success: function(response){
          $(".auth_btns").remove();
          $("#content").append(response);
          console.log(response);
        },
        error: function(response){
          console.log("YOU'VE FAILED");
        }
      });
    });


  });

