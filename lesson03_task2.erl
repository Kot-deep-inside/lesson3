-module(lesson03_task2).
-export([words/1]).

words(BinText) ->
    lists:reverse(split_words(BinText, [])).

split_words(<<>>, Acc) ->
    Acc;
split_words(BinText, Acc) ->
    case binary:split(BinText, <<" ">>, [{parts, 2}]) of
        [Word] ->
            [Word | Acc];
        [Word, Rest] ->
            split_words(Rest, [Word | Acc])
    end.
