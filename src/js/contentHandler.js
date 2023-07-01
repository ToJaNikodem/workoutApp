reloadWorkouts();
const mainActive = contents['mainActive'];
const defaultMain = contents['defaultMain'];

var main = $('main');

var variantName = '';
var workoutVariantId = null;

var exerciseId = 0;
var exerciseType = 0;

$(document).ready(function () {
  $(document).on('click', '.closeButtonSmall', function () {
    notActiveMain();
  });

  $(document).on('click', '.star', function () {
    var workoutId = $(this).closest('.workout').data('workout-id');
    var favorite = $(this).data('favorite');
    $.ajax({
      url: '/src/php/content/toggleFavorite',
      type: 'POST',
      data: { workoutId: workoutId, favorite: favorite },
      success: function (response) {
        reloadWorkouts();
      }
    });
  });

  $(document).on('click', '.exerciseSetsTabButton', function () {
    $.ajax({
      url: '/src/php/content/exerciseSetsTab',
      type: 'POST',
      data: { exerciseId: exerciseId, exerciseType: exerciseType },
      success: function (response) {
        $('.innerTabs').html(response);
        $(".activeTab").css({
          left: '1rem',
        });
      }
    });
  });

  $(document).on('click', '.exerciseHistoryTabButton', function () {
    $.ajax({
      url: '/src/php/content/exerciseHistoryTab',
      type: 'POST',
      data: { exerciseId: exerciseId, exerciseType: exerciseType },
      success: function (response) {
        $('.innerTabs').html(response);
        $(".activeTab").css({
          left: '5.5rem',
        });
      }
    });
  });

  $(document).on('click', '.exerciseGraphTabButton', function () {
    $.ajax({
      url: '/src/php/content/exerciseGraphTab',
      type: 'POST',
      data: { exerciseId: exerciseId, exerciseType: exerciseType },
      success: function (response) {
        $('.innerTabs').html(response);
        $(".activeTab").css({
          left: '10rem',
        });
      }
    });
  });

  $(document).on('click', '.exercisePRsTabButton', function () {
    $.ajax({
      url: '/src/php/content/exercisePRsTab',
      type: 'POST',
      data: { exerciseId: exerciseId, exerciseType: exerciseType },
      success: function (response) {
        $('.innerTabs').html(response);
        $(".activeTab").css({
          left: '14.5rem',
        });
      }
    });
  });

  $(document).on('click', '.exerciseMusclesTabButton', function () {
    $.ajax({
      url: '/src/php/content/exericseMusclesTab',
      type: 'POST',
      data: { exerciseId: exerciseId, exerciseType: exerciseType },
      success: function (response) {
        $('.innerTabs').html(response);
        $(".activeTab").css({
          left: '19rem',
        });
      }
    });
  });

  $(document).on('click', '.exerciseNotesTabButton', function () {
    $.ajax({
      url: '/src/php/content/exerciseNotesTab',
      type: 'POST',
      data: { exerciseId: exerciseId, exerciseType: exerciseType },
      success: function (response) {
        $('.innerTabs').html(response);
        $(".activeTab").css({
          left: '23.5rem',
        });
      }
    });
  });

  $(document).on('click', '.closeExercise', function () {
    showWorkoutVariants(workoutVariantId);
  });

  $(document).on('click', '.addWeight', function () {
    $weight = parseInt($('.weight').val());
    if ($weight < 9999) {
      $('.weight').val($weight + 1);
    }
  });

  $(document).on('click', '.subtractWeight', function () {
    $weight = parseInt($('.weight').val());
    if ($weight >= 1) {
      $('.weight').val($weight - 1);
    } else {
      $('.weight').val(0);
    }
  });

  $(document).on('click', '.addReps', function () {
    $reps = parseInt($('.reps').val());
    if ($reps < 65535) {
      $('.reps').val($reps + 1);
    }
  });

  $(document).on('click', '.subtractReps', function () {
    $reps = parseInt($('.reps').val());
    if ($reps >= 1) {
      $('.reps').val($reps - 1);
    } else {
      $('.reps').val(0);
    }
  });

  $(document).on('click', '.dropset', function () {
    $(this).toggleClass('active');
    if ($('.dropsetInput').val() == 0) {
      $('.dropsetInput').val('1');
    } else {
      $('.dropsetInput').val('0');
    }
  });

  $(document).on('click', '.showExerciseArrow', function () {
    exerciseId = $(this).closest('.exercise').data('exercise-id');
    exerciseType = $(this).closest('.exercise').data('exercise-type');
    $.ajax({
      url: '/src/php/content/exercise',
      type: 'POST',
      data: { exerciseId: exerciseId, exerciseType: exerciseType },
      success: function (response) {
        activeMain(variantName);
        main.append(contents['workoutVariantsPage']);
        main.append(response);
      },
      error: function (error) {
        console.log(error.responseText);
      },
    });
  });

  $('.addWorkoutForm').submit(function (event) {
    event.preventDefault();
    var formData = $(this).serialize();

    $.ajax({
      type: 'POST',
      url: '/src/php/content/addNewWorkout',
      data: formData,
      success: function (response) {
        reloadWorkouts();
      },
    });
  });

  $(document).on('click', '.showWorkoutVariant', function () {
    workoutVariantId = $(this).closest('.workoutVariant').data('workout-variant-id');
    showWorkoutVariants(workoutVariantId);
  });

  $(document).on('click', '.variantNotes', function () {
    $.ajax({
      url: '/src/php/content/variantNotes',
      type: 'POST',
      dataType: 'json',
      data: { workoutVariantId: workoutVariantId },
      success: function (response) {
        activeMain(variantName);
        main.append(contents['workoutVariantsPage']);
        main.append(contents['notes']);
        $('.notes').append(response.content);
        $('.notesHeader').html(response.header);
      },
    });
  });

  $(document).on('click', '.variantNotesBack', function () {
    showWorkoutVariants(workoutVariantId);
  });

  $(document).on('click', '.setNoteArrow', function () {
    $(this).parent().toggleClass('active');
  });

  $(document).on('click', '.timers', function () {
    $.ajax({
      url: '/src/php/content/timer',
      type: 'POST',
      success: function (response) {
        activeMain('Timer');
        // main.html(content);
      }
    });
  });

  $(document).on('input', '.timer', function () {
    var value = $(this).val();
    var input = value.replace(/[^0-9:]/g, '');
    $(this).val(input);
    var correctedInput = '';
    var digitsOnly = input.replace(/\D/g, '');

    if (digitsOnly.length > 0) {
      var minutes = digitsOnly.substring(0, 2);
      var seconds = digitsOnly.substring(2, 4);

      minutes = minutes < 60 ? minutes : 59;
      seconds = seconds < 60 ? seconds : 59;

      correctedInput = minutes + ':' + seconds;

      $(this).val(correctedInput);
    }
  });

  $(document).on('click', '.start', function () {
    var value = $('.timer').val();
    var minutes = value.substring(0, 2);
    var seconds = value.substring(3, 5);
    var duration = minutes * 60 + seconds;
    var startTime = Date.now();
    var endTime = startTime + (duration * 1000);

    $('.start').addClass('pause');
    $('.start').removeClass('start');

    var remainingTime = Math.max(0, endTime - Date.now());

    var minutes = Math.floor((remainingTime % 3600000) / 60000);
    var seconds = Math.floor((remainingTime % 60000) / 1000);

    var formattedTime = minutes.toString().padStart(2, '0') + ':' + seconds.toString().padStart(2, '0');

    $('.timer').val(formattedTime);

    intervalID = setInterval(function () {
      var remainingTime = Math.max(0, endTime - Date.now());

      var minutes = Math.floor((remainingTime % 3600000) / 60000);
      var seconds = Math.floor((remainingTime % 60000) / 1000);

      var formattedTime = minutes.toString().padStart(2, '0') + ':' + seconds.toString().padStart(2, '0');

      $('.timer').val(formattedTime);

      if (remainingTime <= 0) {
        clearInterval(intervalID);
        alert('end');
      }
    }, 1000);
  });

  $(document).on('click', '.addTime', function () {
    var value = $('.timer').val();
    var minutes = value.substring(0, 2);
    minutes = minutes < 60 ? minutes : 59;
    var seconds = value.substring(3, 5);
    var newValue = (parseInt(minutes) + 1).toString().padStart(2, '0') + ':' + seconds.padStart(2, "0");

    $('.timer').val(newValue);
  });
  $(document).on('click', '.subtractTime', function () {

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

function activeMain(header) {
  main.addClass('whiteWindow active');
  main.html(mainActive);
  $('.header').text(header);
}

function notActiveMain() {
  main.removeClass('whiteWindow active');
  main.html(defaultMain);
}

function showWorkoutVariants(workoutVariantId) {
  $.ajax({
    url: '/src/php/content/workoutVariants',
    type: 'POST',
    dataType: 'json',
    data: { workoutVariantId: workoutVariantId },
    success: function (response) {
      variantName = response.variantName;
      activeMain(response.variantName);
      main.append(contents['workoutVariantsPage']);
      main.append(response.content);
    },
  });
}