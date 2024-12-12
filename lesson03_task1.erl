-module(lesson03_task1).
-export([first_word/1]).

first_word(BinText) ->
    Words = binary:split(BinText, <<" ">>, [global]),
    hd(Words).
