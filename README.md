# nim-cgdk
A Nim language pack for [RussianAiCup2017](https://russianaicup.ru)

## How to build?
Just run the nimble task `nimble make` and wait for MyStrategy executable will appear in project root.

## How to write my own strategy?
Edit the example strategy located in file [nim_cgdk/my_strategy.nim](https://github.com/xomachine/nim-cgdk/blob/master/nim_cgdk/my_strategy.nim).

## How to test my strategy?
Start the [LocalRunner](http://russianaicup.ru/p/localrunner?locale=en) and run the MyStrategy executable obtained from the build step.

It is also possible to combine build and run steps into one command:
`nimble build --run`
