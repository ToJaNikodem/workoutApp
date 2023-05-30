const exerciseList = document.getElementById("exerciseContainer");


function exerciseListChanger (divId) {
	console.log(divId);exerciseList.innerHTML = "";
	fetch('./src/php/php.php?id=' + divId)
	.then(response => response.text())
	.then(data => {
		// Insert the retrieved data into the target div
		exerciseList.innerHTML = data;
	})
	.catch(error => {
		console.error('Error:', error);
	});
}
