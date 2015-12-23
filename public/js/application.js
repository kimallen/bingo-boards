$(document).ready(function() {
  // formListener();
});


var formListener = function(){
	$('#add_clues').hide();
	$('.container').on('submit', '#new_game_form', function(e){
		e.preventDefault();

		//Add new game title and theme to page and remove form
		var formData = $(this).serialize();

		var request = $.ajax({
									url: '/games',
									method: 'post',
									data: formData
								})

		request.done(function(response){
			console.log(response)
			$('#new_game').prepend(response);
			$('#add_clues').show();
			$('#new_game_form').remove();
		})

	});

	$('#add_clues').hide();
	$('.container').on('submit', '#new_game_form', function(e){
		e.preventDefault();

		//Add new game title and theme to page and remove form
		var formData = $(this).serialize();

		var request = $.ajax({
									url: '/games',
									method: 'post',
									data: formData
								})

		request.done(function(response){
			console.log(response)
			$('#new_game').prepend(response);
			$('#add_clues').show();
			$('#new_game_form').remove();
		})

	});
}//closes formListener