$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

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

});
