﻿#language: ru

@tree
@ExportScenarios

Функциональность: Проверка Справочников

Сценарий: Открытие формы списка справочника "ИмяСправочника"
	Дано я закрыл все окна клиентского приложения

	Если нет права "Просмотр" к объекту "Справочник.[ИмяСправочника]" тогда
		Тогда я останавливаю выполнение сценария "Skipped"

	Дано я открываю основную форму списка справочника "ИмяСправочника"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка справочника [ИмяСправочника]"
	И я закрыл все окна клиентского приложения

Сценарий: Открытие формы существующего элемента справочника "ИмяСправочника"
	Дано я закрыл все окна клиентского приложения

	Если нет права "Просмотр" к объекту "Справочник.[ИмяСправочника]" тогда
		Тогда я останавливаю выполнение сценария "Skipped"

	Дано я ищу последние 5 элементов объекта "Справочник.[ИмяСправочника]" в переменную "СписокЭлементов"
	Если '$СписокЭлементов$.Количество() = 0' Тогда
		Тогда я останавливаю выполнение сценария "Skipped"
	И для каждого значения "СсылкаСправочника" из массива "$СписокЭлементов$"
		Тогда я запоминаю значение выражения 'ПолучитьНавигационнуюСсылку($СсылкаСправочника$)' в переменную "НавигационнаяСсылкаСправочника"
		Затем я открываю навигационную ссылку "$НавигационнаяСсылкаСправочника$"
		Если появилось предупреждение тогда
			Тогда я вызываю исключение "Не удалось открыть навигационную ссылку $НавигационнаяСсылкаСправочника$"
		И я закрыл все окна клиентского приложения

Сценарий: Открытие формы нового элемента справочника "ИмяСправочника"
	Дано я закрыл все окна клиентского приложения

	Если нет права "ИнтерактивноеДобавление" к объекту "Справочник.[ИмяСправочника]" тогда
		Тогда я останавливаю выполнение сценария "Skipped"

	Дано я открываю основную форму справочника "ИмяСправочника"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму элемента справочника [ИмяСправочника]"
	И я закрыл все окна клиентского приложения

Сценарий: Перезапись существующего элемента справочника "ИмяСправочника"
	Дано я закрыл все окна клиентского приложения

	Если нет права "ИнтерактивноеДобавление" к объекту "Справочник.[ИмяСправочника]" тогда
		Тогда я останавливаю выполнение сценария "Skipped"

	Дано я ищу последние 5 элементов объекта "Справочник.[ИмяСправочника]" в переменную "СписокЭлементов"
	Если '$СписокЭлементов$.Количество() = 0' Тогда
		Тогда я останавливаю выполнение сценария "Skipped"
	И для каждого значения "СсылкаСправочника" из массива "$СписокЭлементов$"
		Тогда я запоминаю значение выражения 'ПолучитьНавигационнуюСсылку($СсылкаСправочника$)' в переменную "НавигационнаяСсылкаСправочника"
		Затем я открываю навигационную ссылку "$НавигационнаяСсылкаСправочника$"
		Если появилось предупреждение тогда
			Тогда я вызываю исключение "Не удалось открыть навигационную ссылку $НавигационнаяСсылкаСправочника$"
		И я нажимаю на кнопку "Записать и закрыть"
		Если появилось предупреждение тогда
			Тогда я вызываю исключение "Не удалось перезаписать элемент справочника $НавигационнаяСсылкаСправочника$"
		Если в текущем окне есть сообщения пользователю Тогда
			Тогда я вызываю исключение с текстом сообщения
		И я закрыл все окна клиентского приложения
	
Сценарий: Печать существующего элемента справочника "ИмяСправочника"
	Дано я закрыл все окна клиентского приложения

	Если нет права "Просмотр" к объекту "Справочник.[ИмяСправочника]" тогда
		Тогда я останавливаю выполнение сценария "Skipped"

	Дано я получаю список команд печати для объекта метаданных "Справочник.[ИмяСправочника]" в переменную "СписокПечатныхФорм"
	Если '$СписокПечатныхФорм$.Количество() = 0' Тогда
		Тогда я останавливаю выполнение сценария "Skipped"
	Дано я ищу последние 5 элементов объекта "Справочник.[ИмяСправочника]" в переменную "СписокЭлементов"
	Если '$СписокЭлементов$.Количество() = 0' Тогда
		Тогда я останавливаю выполнение сценария "Skipped"
	И для каждого значения "СсылкаСправочника" из массива "$СписокЭлементов$"
		Тогда я запоминаю значение выражения 'ПолучитьНавигационнуюСсылку($СсылкаСправочника$)' в переменную "НавигационнаяСсылкаСправочника"
		Затем я открываю навигационную ссылку "$НавигационнаяСсылкаСправочника$"
		Если появилось предупреждение тогда
			Тогда я вызываю исключение "Не удалось открыть навигационную ссылку $НавигационнаяСсылкаСправочника$"
		И для каждого значения "ПечатнаяФормаОбъекта" из массива "$СписокПечатныхФорм$"
			Тогда я запоминаю значение выражения '$ПечатнаяФормаОбъекта$.Представление' в переменную "НаименованиеПечатнойФормы"
			Если элемент с заголовком "$НаименованиеПечатнойФормы$" присутствует на форме тогда
				Тогда я нажимаю на кнопку "$НаименованиеПечатнойФормы$"
				Если появилось предупреждение тогда
					Тогда я вызываю исключение "Не удалось напечатать форму $НаименованиеПечатнойФормы$ для элемента справочника $НавигационнаяСсылкаСправочника$"
				И я закрываю текущее окно
		И я закрыл все окна клиентского приложения
