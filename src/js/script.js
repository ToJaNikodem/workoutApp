const exerciseList = document.getElementById("exerciseContainer");
const exerciseListHeader = document.getElementById('exerciseListHeader');

function exerciseListChanger(divId) {
	exerciseList.innerHTML = "";
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
