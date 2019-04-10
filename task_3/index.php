<?php include 'simple_html_dom.php'; ?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
	      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="scripts.js"></script>
	<title>Adress_list</title>
</head>
<body>

<form id="live-search" action="" class="styled" method="post">
	<fieldset>
		<input type="text" class="text-input" id="filter" value=""/>
	</fieldset>
</form>
<nav>
	<ul>
		<?php
		$data = file_get_html( 'http://ginfo.ru/ulicy/' );
		foreach ( $data->find( '.street_unit' ) as $a ) {
			echo "<li><a href='#'>" . $a->plaintext . "</a></li>";
		}
		?>
	</ul>
</nav>

</body>
</html>