$(document).ready(function() {

    $(".login_btn").on("click", function(event){
      event.preventDefault();
      console.log("you clicked!")
      $(".login_form").toggle();
    });


    $(".login_ajax").on("submit", function(event){
      event.preventDefault();
      var $form = $(event.target);
      $.ajax({
        url: $form.attr('action'),
        type: $form.attr('method'),
        data: $form.serialize(),
        success: function(response){
          console.log("YOU ARE SUCCESFUL")
        },
        error: function(response){
          console.log("YOU'VE FAILED")
        }
      });
    });


  });

