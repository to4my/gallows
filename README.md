# Виселица (игра)

Виртуальная реализация игры ['Виселица'](https://ru.wikipedia.org/wiki/%D0%92%D0%B8%D1%81%D0%B5%D0%BB%D0%B8%D1%86%D0%B0_(%D0%B8%D0%B3%D1%80%D0%B0))

### Описание
В игре реализован метод нормализации букв Ё и Й. Вышеупомянутые буквы заменяются по схеме 
`ё → е, й → и`.

### Состав репозитория
1. В папке `/data/figures/` хранятся файлы с прорисовкой виселицы.
2. В файле `/data/words.txt` хранятся слова для разгадывания. Новое слово заносится с новой строки и в верхнем регистре.

### Требования 
Для корректной игры необходимо использовать `ruby`  не ниже версии `2.4`

### Установка и запуск

1. Скачиваете репозиторий.
2. Запускаете в терминале ruby файл `main.rb`  

```
$ ruby main.rb
```
### Пример
[Демонстрационный пример](https://c2n.me/447KB53)

### Об авторе
Автор `to4my(@)ya(.)ru` не несет ответственность за сложность загаданных слов
