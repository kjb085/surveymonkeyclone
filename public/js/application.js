$(document).ready(function() {

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


});
