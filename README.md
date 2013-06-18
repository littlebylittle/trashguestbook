Добрый день!

Вот тестовое задание о котором я говорил:
Гостевая книга предоставляет возможность пользователям сайта оставлять сообщения на сайте.
Все данные введенные пользователем сохраняются в БД MySQL, так же в базе
данных сохраняются данные о IP пользователя и его браузере.

Форма добавления записи в гостевую книгу должна иметь следующие поля:
User Name (цифры и буквы латинского алфавита) – обязательное поле
E-mail (формат email) — обязательное поле
Homepage (формат url) – необязательное поле
CAPTCHA (цифры и буквы латинского алфавита) – изображение и обязательное поле (http://ru.wikipedia.org/wiki/CAPTCHA)
Text (непосредственно сам текст сообщения, HTML тэги недопустимы) – обязательное поле

Пользователь может использовать следующие HTML тэги в сообщениях:
<a href=”" title=”"> </a>
<code> </code>
<i> </i>
<strike></strike>
<strong> </strong>

Должна быть проверка на закрытие тэгов, код должен быть валидным XHTML
Сообщения должны выводится в виде таблицы, с возможностью сортировки
 по следующим полям: User Name, e-mail, и дата добавления (как в порядке
  убывания, так и в обратном). Сообщения должны разбиваться на страницы
  по 25 сообщений на каждой. Сортировка по умолчанию – LIFO.

При написании проекта следует обратить внимание на защиту от XSS атак
и SQL –инъекций.

Приветствуется создания простейшего дизайна с
использованием CSS.