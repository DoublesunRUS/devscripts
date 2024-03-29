﻿#language: ru

@tree
@ExportScenarios

Функциональность: Проверка Отчетов

Сценарий: Отсутствует право "ИмяПрава" для отчета "ИмяОтчета"
	Если объект "Отчет.[ИмяОтчета]" недоступен по функциональным опциям
		Тогда я останавливаю выполнение сценария "Skipped"

	Если есть право "ИмяПрава" к объекту "Отчет.[ИмяОтчета]" тогда
		Тогда я вызываю исключение "Ошибочно установлено право [ИмяПрава] для отчета [ИмяОтчета]"

Сценарий: Формирование всех вариантов отчета "ИмяОтчета"
	Если объект "Отчет.[ИмяОтчета]" недоступен по функциональным опциям
		Тогда я останавливаю выполнение сценария "Skipped"

	Если нет права "Использование" к объекту "Отчет.[ИмяОтчета]" тогда
		Тогда я останавливаю выполнение сценария "Skipped"

	Дано я получаю список вариантов отчета "ИмяОтчета" в переменную "СписокВариантовОтчета"

	Дано я закрыл все окна клиентского приложения
	И я очищаю окно сообщений пользователю

	Дано я открываю основную форму отчета "ИмяОтчета"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму отчета [ИмяОтчета]"
	
	Если '$СписокВариантовОтчета$.Количество() = 0' Тогда
		Если элемент с заголовком "Организация" присутствует на форме Тогда
			И я открываю выпадающий список "Организация"
			И я сохраняю выпадающий список "Организация" как "ДоступныеОрганизации"
			И я закрываю выпадающий список "Организация"
			И для каждого значения "ОтборОрганизация" из таблицы в памяти "ДоступныеОрганизации"
				И из выпадающего списка "Организация" я выбираю точное значение "$ОтображаемыйТекст$"
				И я нажимаю на кнопку "Сформировать"
				И я жду заполнение табличного документа 'ОтчетТабличныйДокумент' отчета "ИмяОтчета" в течение 10 секунд
				Если появилось предупреждение тогда
					Тогда я вызываю исключение "Не удалось сформировать отчет [ИмяОтчета]"
	
		Иначе
			И я нажимаю на кнопку "Сформировать"
			И я жду заполнение табличного документа 'ОтчетТабличныйДокумент' отчета "ИмяОтчета" в течение 10 секунд
			Если появилось предупреждение тогда
				Тогда я вызываю исключение "Не удалось сформировать отчет [ИмяОтчета]"

	Иначе
		И для каждого значения "ВариантОтчета" из массива "$СписокВариантовОтчета$"
			Тогда я запоминаю значение выражения '$ВариантОтчета$.Представление' в переменную "НаименованиеВарианта"
			И я нажимаю на кнопку "$НаименованиеВарианта$"

			Если элемент с заголовком "Организация" присутствует на форме Тогда
				И я открываю выпадающий список "Организация"
				И я сохраняю выпадающий список "Организация" как "ДоступныеОрганизации"
				И я закрываю выпадающий список "Организация"
				И для каждого значения "ОтборОрганизация" из таблицы в памяти "ДоступныеОрганизации"
					И из выпадающего списка "Организация" я выбираю точное значение "$ОтображаемыйТекст$"
					И я нажимаю на кнопку "Сформировать"
					И я жду заполнение табличного документа 'ОтчетТабличныйДокумент' отчета "ИмяОтчета" в течение 60 секунд
					Если появилось предупреждение тогда
						Тогда я вызываю исключение "Не удалось сформировать отчет [ИмяОтчета]"
		
			Иначе
				И я нажимаю на кнопку "Сформировать"
				И я жду заполнение табличного документа 'ОтчетТабличныйДокумент' отчета "ИмяОтчета" в течение 60 секунд
				Если появилось предупреждение тогда
					Тогда я вызываю исключение "Не удалось сформировать отчет [ИмяОтчета]"
		
	И я закрыл все окна клиентского приложения
