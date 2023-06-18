reloadWorkouts();

$(document).ready(function() {
  $(document).on('click', '.favorite', function() {
    var workoutId = $(this).closest('.workout').data('workout-id');
    console.log(workoutId);

    $.ajax({
      url: '/src/php/content/makeFavorite',
      type: 'POST',
      data: { workoutId: workoutId },
      success: function(response) {
        console.log(response);
        //reloadWorkouts();
      }
    });
  });
});


function reloadWorkouts() {
  $.ajax({
    url: '/src/php/content/workouts.php',
    type: 'POST',
    success: function (response) {
      $('.workoutsList').html(response);
    }
  });
}