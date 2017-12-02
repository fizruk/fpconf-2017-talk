# ghcjs-demo

Это простой демонстрационный проект GHCJS.

## Системные требования

Этот проект собирается при помощи [Stack](https://www.haskellstack.org).

Stack может собирать проекты, а также устанавливать компиляторы GHC и GHCJS.

Для работы интерпретатора также необходим [Node.js](https://nodejs.org/en/).

Для взаимодействия интерпретатора с браузером, установите пакет `socket.io`:

```
npm install socket.io --global
```

## Установка и настройка GHCJS

Запустите команду

```
stack setup
```

Эта команда может занять много времени (несколько часов),
поскольку все пакеты собираются из исходников.
Кроме того, GHCJS собирает свои версии основных пакетов после установки
самого компилятора.

## Сборка проекта

Для сборки запустите команду

```
stack build
```

## Запуск интерпретатора

Чтобы запустить интерпретатор запустите

```
stack repl
```

Эта команда запустит интерпретатор и поднимет локальный сервер
по адресу http://localhost:6400 (порт может отличаться, смотрите вывод интерпретатора).
Откройте страницу по этому адресу в браузере.

Чтобы напечатать что-нибудь на странице, введите следующие команды в интерпретаторе:

```
import GHCJS.Marshal.Pure
documentWrite (pToJSVal "Hello, from Haskell!")
```
