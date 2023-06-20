reloadWorkouts();

$(document).ready(function() {
  $(document).on('click', '.star', function() {
    var workoutId = $(this).closest('.workout').data('workout-id');
    var favorite = $(this).data('favorite');
    $.ajax({
      url: '/src/php/content/toggleFavorite',
      type: 'POST',
      data: { workoutId: workoutId, favorite: favorite },
      success: function(response) {
        reloadWorkouts();
      }
    });
  });
});

function reloadWorkouts() {
  $.ajax({
    url: '/src/php/content/workouts',
    type: 'POST',
    success: function (response) {
      $('.workoutsList').html(response);
    }
  });
}