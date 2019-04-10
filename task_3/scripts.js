/**
 * Функция фильтрации списка улиц
 */
$( document ).ready( function () {

	// Отслеживаем нажатие клавиши
	$( "#filter" ).keyup( function () {

		// Получаем текст из поля ввода
		var filter = $( this ).val();

		// Перебираем список
		$( "nav ul li" ).each( function () {

			// Если элемент списка не содержит текстовую фразу скрываем его
			if ( $( this ).text().search( new RegExp( filter, "i" ) ) < 0 ) {
				$( this ).fadeOut();

				// Показать элемент списка, если фраза соответствует
			} else {
				$( this ).show();
			}
		} );
	} );
} );