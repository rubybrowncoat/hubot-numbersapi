# Hubot Example

An numbersapi script package for Hubot

[![Build Status](https://travis-ci.org/quest/hubot-numbersapi.png)](https://travis-ci.org/quest/hubot-numbersapi)

## Installation

In hubot project repo, run:

`npm install hubot-numbersapi --save`

Then add **hubot-numbersapi** to your `external-scripts.json`:

```
[
	"hubot-numbersapi"
]
```

## Usage

The command `hubot numbersapi <number>` will retrieve an interesting fact.

For example:

```
victorsanmartin>> hubot numbersapi 42
hubot>> 42 is the number of laws of cricket.
```