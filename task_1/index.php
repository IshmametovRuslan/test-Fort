<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
	      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Events_history</title>
</head>
<body>

</body>
</html>
<?php
//Подключаем файл с функциями
include 'function.php';
?>
<style>
	* {
		margin: 0;
		padding: 0;
		text-align: center;
	}

	.form {
		margin: 20px auto;
		text-align: center;

	}

	form {
		margin: 10px;
	}

	table {
		margin: auto;
	}

	td, th {
		padding: 20px;
		border: 1px solid black;
	}
</style>
<div class="form">
	<h3>Чтоб просмотреть сеансы работы с клиентом введите его ID</h3>
	<form action="" method="post">
		<input type="number" name="clientId" placeholder="Введите ID клиента">
		<input type="submit" name="send" value="Сформировать">
	</form>
</div>
<table>
	<tr>
		<th>UserID</th>
		<th>DateStart</th>
		<th>DateEnd</th>
		<th>Days</th>
	</tr>
	<?php

	//Формируем таблицу с данными о периодах работы с клиентами
	$result = '';
	foreach ( db_query() as $elem => $key ) {
		$result .= '<tr>';
		$result .= '<td>' . $key['UserID'] . '</td>';
		$result .= '<td>' . $key['DateStart'] . '</td>';
		$result .= '<td>' . $key['DateEnd'] . '</td>';
		$result .= '<td>' . $key['Days'] . '</td>';
		$result .= '</tr>';
	}
	echo $result;
	?>
</table>

<?php
