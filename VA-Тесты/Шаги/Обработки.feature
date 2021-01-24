﻿#language: ru

@tree
@ExportScenarios

Функциональность: Проверка Обработок

Сценарий: Открытие основной формы обработки "ИмяОбработки"
	Дано я закрыл все окна клиентского приложения

	Если нет права "Использование" к объекту "Обработка.[ИмяОбработки]" тогда
		Тогда я останавливаю выполнение сценария "Skipped"

	Дано я открываю основную форму обработки "ИмяОбработки"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму основную обработки [ИмяОбработки]"
	И я закрыл все окна клиентского приложения
