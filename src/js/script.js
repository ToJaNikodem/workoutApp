const exerciseList = document.getElementById('exerciseContainer');
const exerciseListHeader = document.getElementById('exerciseListHeader');
const exerciseAddForm = document.getElementById('exerciseAddForm');
const dimmer = document.getElementById('dimmer');

// function that displays exercises from a workout
function exerciseListChanger(divId) {
	exerciseList.innerHTML = '';
	fetch('./src/php/php.php?id=' + divId)
		.then(response => response.json())
		.then(data => {
			const { divs, workoutName } = data;
			exerciseList.innerHTML = divs;
			exerciseListHeader.innerHTML = workoutName;
		})
		.catch(error => {
			console.error('Error:', error);
		});
}

// Add exercise button handler
document.getElementById('addExerciseButton').addEventListener('click', addExercise);

function addExercise() {
	exerciseAddForm.classList.add('active');
	dimmer.classList.add('active');
}

window.onclick = function (event) {
	if (!event.target.matches('#exerciseAddForm') && !event.target.closest('#addExerciseButton')) {
		if (exerciseAddForm.classList.contains('active')) {
			exerciseAddForm.classList.remove('active');
			dimmer.classList.remove('active');
		}
	}
};

document.getElementById('exerciseAddForm').addEventListener('click', function (event) {
	event.stopPropagation();
});
