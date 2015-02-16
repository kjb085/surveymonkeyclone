$(document).ready(function() {

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  	$("#login_btn").on("click", function(event){
  		event.preventDefault();
  		$(".login_form").toggle();
  	});

    $("#signup_btn").on("click", function(event){
      event.preventDefault();
      $(".signup_form").toggle();
    });

  	$("#login_ajax").on("submit", function(event){
  		// event.preventDefault();
  		var $form = $(event.target);
  		$.ajax({
  			url: $form.attr('action'),
  			type: $form.attr('method'),
  			data: $form.serialize(),
  			success: function(response){
  				$(".container").remove();
  				$("#content").append(response);
  			},
				error: function(){},
			/* Act on the event */
			});
  	});

    $("#signup_ajax").on("submit", function(event){
      // event.preventDefault();
      var $form = $(event.target);
      $.ajax({
        url: '/signup',
        type: 'POST',
        data: $form.serialize(),
        success: function(response){
          $(".container").remove();
          $("#content").append(response);
        }
      });
    });


  // Create survey + questions AJAX call
  $('.add_question').on('click',function(event){

    event.preventDefault();

    $.ajax(
    {
      type: "get",
      url: '/surveys/new/add_question',
      data: {qCount: $('.question').length},

      success: function(response){

        $('.questions-container').append(response);
        console.log('GREAT success')

      },

        fail: function(){
          console.log("YOU LOSE GOOD-DAY SIR");
      }
    })



  })

  $('.delete_survey').on('click', function(event){
    event.preventDefault();

    $.ajax({
      type: 'delete',
      url: this.href,
      success: function(response){
        // console.log(response)
        $('.surveys').html(response)
      },
      error: function(){
        console.log("ERROR WILL ROBINSON")
      }
    })
  })



// $('.remove-question').on('click',function(event){

//     event.preventDefault();

//     $.ajax(
//     {
//       type: "get",
//       url: '/surveys/new/add_question',
//       data: {qCount: $('.question').length},

//       success: function(response){

//         $('questions-container div:last-child',this).remove();
//         console.log('GREAT success')

//       },

//         fail: function(){
//           console.log("YOU LOSE GOOD-DAY SIR");
//       }
//     })



//   })

  // Start survey and render first question AJAX call
  // $('#start_survey').on('click', function(event){
  //   event.preventDefault();

  //   $.ajax({
  //     type: 'get',
  //     url: this.href,
  //     data: {},
  //     success: function(response){
  //       console.log(response)
  //       // Remove start survey button
  //       // .html the response to #question
  //       // Include a submit survey button
  //     },
  //     error: function(){
  //       console.log("AJAX returning error")
  //     }
  //   })
  // })

  // $('#submit_survey').on('click', function(){

  // })

  // Not sure I want to keep this, but it currently serves as the survey completion feedback
  // $('#submit_survey').on('click', function(event){
  //   alert("Thanks for taking the survey")
  // })


});
