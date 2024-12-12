-module(lesson03_task3).
-export([split/2]).

split(BinText, Separator) ->
    split_parts(BinText, Separator, []).

split_parts(<<>>, _Separator, Acc) ->
    lists:reverse(Acc);
split_parts(BinText, Separator, Acc) ->
    case binary:split(BinText, Separator, [{parts, 2}]) of
        [Part] ->
            [Part | Acc];
        [Part, Rest] ->
            split_parts(Rest, Separator, [Part | Acc])
    end.
