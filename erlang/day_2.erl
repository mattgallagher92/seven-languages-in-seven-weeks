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

% TODO: would be nice if this could be an inner function inside subtotals.
subtotal({Item, Quantity, Price}) ->
        {Item, Quantity * Price}.

subtotals(ShoppingList) ->
        [subtotal(X) || X <- ShoppingList].

% subtotals([{onions, 3, 0.50}, {tomatoes, 2, 0.59}, {mushrooms, 10, 0.12}]).
% [{onions,1.5},{tomatoes,1.18},{mushrooms,1.2}]

% Expected cell values: x, o or e.
tic_tac_toe_result({Tl, Tm, Tr, Ml, Mm, Mr, Bl, Bm, Br}) ->
        Cells = [Tl, Tm, Tr, Ml, Mm, Mr, Bl, Bm, Br],

        LCol = {Tl, Ml, Bl},
        MCol = {Tm, Mm, Bm},
        RCol = {Tr, Mr, Br},

        TRow = {Tl, Tm, Tr},
        MRow = {Ml, Mm, Mr},
        BRow = {Bl, Bm, Br},

        TlToBrDiag = {Tl, Mm, Br},
        TrToBlDiag = {Tr, Mm, Bl},

        Lines = [LCol, MCol, RCol, TRow, MRow, BRow, TlToBrDiag, TrToBlDiag],

        XHasWon = lists:member({x, x, x}, Lines),
        OHasWon = lists:member({o, o, o}, Lines),
        CellsAreEmpty = lists:member(e, Cells),

        if XHasWon ->
                   x;
           OHasWon ->
                   o;
           CellsAreEmpty ->
                   no_winner;
           true ->
                   % Don't get why it's "cat", that's just what the exercise says...
                   cat
        end.
