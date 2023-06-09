<?php
	$language = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);

	if ($language == 'pl') {
		header('Location: /pages/pl/signIn.php');
	} else {
		header('Location: /pages/en/signIn.php');
	}

?>