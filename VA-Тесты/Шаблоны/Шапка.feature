#language: ru

@tree

#report.story=Пользователь "%ПредставлениеПользователя%"
Функциональность: Тесты под пользователем "%ПредставлениеПользователя%"

Контекст:
	Дано я подключаю TestClient "%ПредставлениеПользователя%" логин "%ИмяПользователя%" пароль "%ПарольПользователя%"
	И я закрыл все окна клиентского приложения
