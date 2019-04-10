<?php

//Файл подключения к БД
require "db.php";


/**
 *
 * Функция запроса к БД
 *
 * @return array
 *
 */
function db_query() {

	global $link;

	$newArr =[];

	//Проверяем был ли клик по кнопке и не пустое ли поле с ID клиента
	if ( isset( $_POST['send'] ) && ! empty( $_POST['clientId'] ) ) {

		//Создаем переменную с ID клиента
		$clientID = htmlspecialchars( $_POST['clientId'] );


		//Формируем запрос в БД и получаем данные из таблицы с указаным ID клиента
		$query = "SELECT * FROM events_history WHERE ClientID = '" . $clientID . "'";
		$result = mysqli_query( $link, $query ) or die( mysqli_error( $link ) );

		//Проверяем вернул ли запрос нам строку
		if ( mysqli_num_rows( $result ) != 0 ) {
			//Формируем массив посредством перебора строк полученных из БД
			for ( $data = []; $row = mysqli_fetch_assoc( $result ); $data [] = $row ) {

			}
		} else {
			echo "<h2>Такого пользователя не существует</h2>";
		}

		//С помощью цикла пребираем наш массив и получаем значения ID пользователя, даты начала действия
		for ( $i = 0; $i < count( $data ); $i ++ ) {

			$UserID    = $data[ $i ]['UserID'];
			$dateStart = strtotime( $data[ $i ]['Date'] );
			$dateEnd   = strtotime( $data[ $i + 1 ]['Date'] );

			//Если действие последнее в списке, от указывается текущее время
			if ( ! $dateEnd ) {
				$dateEnd = time();
			}

			//Высчитываем какое количество дней пользователь работал с клиентом и преобразовуем формат даты
			$countDays    = $dateEnd - $dateStart;
			$countDays    = (int) date( 'd', $countDays );
			$newDateStart = date( 'Y-m-d', $dateStart );
			$newDateEnd   = date( 'Y-m-d', $dateEnd );

			//Вносим необходимые нам данные в новый массив
			$newArr [ $i ] = [
				'UserID'    => $UserID,
				'DateStart' => $newDateStart,
				'DateEnd'   => $newDateEnd,
				'Days'      => $countDays
			];
		}
	}

	//Возвращаем массив со значениями
	return $newArr;

}
