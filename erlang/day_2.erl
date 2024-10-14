-module(day_2).

-export([value_for_keyword/2]).
-export([subtotals/1]).
-export([tic_tac_toe_result/1]).

value_for_keyword(_, []) ->
        not_found;
value_for_keyword(Keyword, [{Keyword, V} | _]) ->
        V;
value_for_keyword(Keyword, [_ | T]) ->
        value_for_keyword(Keyword, T).

%day_2:value_for_keyword(dog, [{mouse, "Squeak"}, {cat, "Meow"}]).
%not_found
%day_2:value_for_keyword(dog, [{mouse, "Squeak"}, {cat, "Meow"}, {dog, "Woof"}]).
%"Woof"

subtotals(ShoppingList) ->
        [{Item, Quantity * Price} || {Item, Quantity, Price} <- ShoppingList].

% subtotals([{onions, 3, 0.50}, {tomatoes, 2, 0.59}, {mushrooms, 10, 0.12}]).
% [{onions,1.5},{tomatoes,1.18},{mushrooms,1.2}]

% Expected cell values: x, o or e.
tic_tac_toe_result(Input) ->
        case Input of
                {A, A, A, _, _, _, _, _, _} ->
                        A;
                {_, _, _, A, A, A, _, _, _} ->
                        A;
                {_, _, _, _, _, _, A, A, A} ->
                        A;
                {A, _, _, A, _, _, A, _, _} ->
                        A;
                {_, A, _, _, A, _, _, A, _} ->
                        A;
                {_, _, A, _, _, A, _, _, A} ->
                        A;
                {A, _, _, _, A, _, _, _, A} ->
                        A;
                {_, _, A, _, A, _, A, _, _} ->
                        A;
                _ ->
                        CellsAreEmpty = lists:member(e, tuple_to_list(Input)),
                        if CellsAreEmpty ->
                                   no_winner;
                           true ->
                                   % Don't get why it's "cat", that's just what the exercise says...
                                   cat
                        end
        end.
