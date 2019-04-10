<?php
require 'db.php';
global $link;

//Формируем запрос к БД и получаем данные из трёх взаимосвязанных таблиц, с учётом повторяющихся значений в столбце Contact
$query = "SELECT `Contact`, `Address` 
FROM `contacts` 
INNER JOIN `persons` USING (PersonID) 
INNER JOIN `buildings` USING (BuildID) 
WHERE `Contact` IN (SELECT `Contact` FROM `contacts` GROUP BY `Contact` HAVING count(*)>1)";
$result = mysqli_query( $link, $query ) or die( mysqli_error( $link ) );

//Формируем массив посредством перебора строк полученных из БД
for ( $data = []; $row = mysqli_fetch_assoc( $result ); $data [] = $row ) {

}

/*$counter = [];

foreach ( $data as $key => $value ) {

}

$temp = [];
$result_array = [];

foreach ($counter as $key => $value) {
	if ($value > 0) {
		for ($i = 0; $i <= $value; $i++) {
			$temp [] = $key;
		}
		$result_array [] = $temp;
	}
}*/


echo '<pre>';
print_r( $data );
echo '</pre>';