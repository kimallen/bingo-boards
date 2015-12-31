$(document).ready(function() {
  formListener();
});


var formListener = function(){
	// $('#add_clues').hide();
	// $('.container').on('submit', '#new_game_form', function(e){
	// 	e.preventDefault();

	// 	//Add new game title and theme to page and remove form
	// 	var formData = $(this).serialize();

	// 	var request = $.ajax({
	// 								url: '/games',
	// 								method: 'post',
	// 								data: formData
	// 							})

	// 	request.done(function(response){
	// 		console.log(response)
	// 		$('#new_game').prepend(response);
	// 		$('#add_clues').show();
	// 		$('#new_game_form').remove();
	// 	})

	// });

	// show form on game page; append new clue to game page
	$('#add_clues').on('submit', '#add_clues_form', function(e){
		e.preventDefault();
		
		var formData = $(this).serialize();
		var route = $(this).attr('action')
		var request = $.ajax({
									url: route,
									method: 'post',
									data: formData
								})

		request.done(function(response){
			$('#clue_list').prepend(response);
			document.getElementById("add_clues_form").reset();			
		})

	});
}//closes formListener