# reddit_news

Итоговое задание 2. Новостное приложение.

## Ссылки на APK

- [app-armeabi-v7a-release.apk](https://disk.yandex.ru/d/CpsV04OImMkTaA)
- [app-arm64-v8a-release.apk](https://disk.yandex.ru/d/RqPdfBew_er4_g)
- [app-x86_64-release.apk](https://disk.yandex.ru/d/S4OzcsagFMplow)

## Ссылка на демонстрацию

[Демо](https://disk.yandex.ru/i/v3aNavsJKK0Cqw)


## Описание

Реализован вывод новостей полученных по API. Новости кешируются в локальной БД (Isar), уникальным ключём является идентификатор новости пришедший по API.<br>
Реализовано обновления списка новостей через виджет `RefreshIndicator`, в качестве идентификатора загрузки выступают шиммеры. Переход от шиммеров к карточкам новостей, либо к сообщению об ошибке анимирован.<br>
Поиск осуществляется при вводе в строку поиска, для поля реализован debounce с задержкой 500 мс.<br>
Во время поиска выводится идентификация загрузки в виде шиммеров.<br>
Есть возможность переключения между тёмной и светлой темой, выбранное значение сохраняется в shared_preferences.<br>
Добавлена иконка приложения и splash screen.<br>
Логика и модели для обработки сетевых запросов, БД и интерфейса разделены.<br>