$(document).ready(function() {


  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  	$("#login_btn").on("click", function(event){
  		event.preventDefault();
  		$(".login_form").toggle();
  	});

  	$("#login_ajax").on("submit", function(event){
  		event.preventDefault();
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

  	})

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

// FOR DELETING QUESTIONS WHILE MAKING THE THANGS

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

 finishc reating surveys and questions and additive questions

});
