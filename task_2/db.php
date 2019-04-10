<?php

//Данные для подключения
$host = 'localhost';
$database = 'buildings_db';
$user = 'root';
$password = '';

//Устанавливаем соединение с БД
$link = mysqli_connect($host,$user,$password,$database);

//Если не подключились к БД
if(!$link) {
	echo "Ошибка: невозможно установить соединение с БД!";
	echo "Текст ошибки: ". mysqli_connect_error();
	exit;
}