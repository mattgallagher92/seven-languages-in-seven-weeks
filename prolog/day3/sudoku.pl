valid([]).
valid([Head|Tail]) :-
    fd_all_different(Head),
    valid(Tail).

sudoku4(Puzzle, Solution) :-
    Solution = Puzzle,

    Puzzle = [S11, S12, S13, S14,
              S21, S22, S23, S24,
              S31, S32, S33, S34,
              S41, S42, S43, S44],

    fd_domain(Solution, 1, 4),

    Row1 = [S11, S12, S13, S14],
    Row2 = [S21, S22, S23, S24],
    Row3 = [S31, S32, S33, S34],
    Row4 = [S41, S42, S43, S44],

    Col1 = [S11, S21, S31, S41],
    Col2 = [S12, S22, S32, S42],
    Col3 = [S13, S23, S33, S43],
    Col4 = [S14, S24, S34, S44],

    Square1 = [S11, S12, S21, S22],
    Square2 = [S13, S14, S23, S24],
    Square3 = [S31, S32, S41, S42],
    Square4 = [S33, S34, S43, S44],

    valid([Row1, Row2, Row3, Row4, Col1, Col2, Col3, Col4, Square1, Square2, Square3, Square4]).

sudoku6(Puzzle, Solution) :-
    Solution = Puzzle,

    Puzzle = [S11, S12, S13, S14, S15, S16,
              S21, S22, S23, S24, S25, S26,
              S31, S32, S33, S34, S35, S36,
              S41, S42, S43, S44, S45, S46,
              S51, S52, S53, S54, S55, S56,
              S61, S62, S63, S64, S65, S66],

    fd_domain(Solution, 1, 6),

    Row1 = [S11, S12, S13, S14, S15, S16],
    Row2 = [S21, S22, S23, S24, S25, S26],
    Row3 = [S31, S32, S33, S34, S35, S36],
    Row4 = [S41, S42, S43, S44, S45, S46],
    Row5 = [S51, S52, S53, S54, S55, S56],
    Row6 = [S61, S62, S63, S64, S65, S66],

    Col1 = [S11, S21, S31, S41, S51, S61],
    Col2 = [S12, S22, S32, S42, S52, S62],
    Col3 = [S13, S23, S33, S43, S53, S63],
    Col4 = [S14, S24, S34, S44, S54, S64],
    Col5 = [S15, S25, S35, S45, S55, S65],
    Col6 = [S16, S26, S36, S46, S56, S66],

    Square1 = [S11, S12, S13, S21, S22, S23],
    Square2 = [S14, S15, S16, S24, S25, S26],
    Square3 = [S41, S42, S43, S51, S52, S53],
    Square4 = [S34, S35, S36, S44, S45, S46],
    Square5 = [S51, S52, S53, S61, S62, S63],
    Square6 = [S54, S55, S56, S64, S65, S66],

    valid([Row1, Row2, Row3, Row4, Row5, Row6,
           Col1, Col2, Col3, Col4, Col5, Col6,
           Square1, Square2, Square3, Square4, Square5, Square6]).

% Test with the following, from https://bogglebrain.com/sudoku-puzzles/sudoku-6x6-free-printable/:
% This is easy book 1 #1.
% sudoku6(
%     [6, 3, _, _, 1, _,
%      _, 5, 2, 3, 6, _,
%      _, 6, 5, _, _, _,
%      4, 2, _, 6, 5, _,
%      2, _, _, _, 4, _,
%      _, 4, 6, _, 3, _],
%      What).
% Expect What to be
%     [6, 3, 4, 2, 1, 5,
%      1, 5, 2, 3, 6, 4,
%      3, 6, 5, 4, 2, 1,
%      4, 2, 1, 6, 5, 3,
%      2, 1, 3, 5, 4, 6,
%      5, 4, 6, 1, 3, 2])

sudoku9(Puzzle, Solution) :-
    Solution = Puzzle,

    Puzzle = [S11, S12, S13, S14, S15, S16, S17, S18, S19,
              S21, S22, S23, S24, S25, S26, S27, S28, S29,
              S31, S32, S33, S34, S35, S36, S37, S38, S39,
              S41, S42, S43, S44, S45, S46, S47, S48, S49,
              S51, S52, S53, S54, S55, S56, S57, S58, S59,
              S61, S62, S63, S64, S65, S66, S67, S68, S69,
              S71, S72, S73, S74, S75, S76, S77, S78, S79,
              S81, S82, S83, S84, S85, S86, S87, S88, S89,
              S91, S92, S93, S94, S95, S96, S97, S98, S99],

    fd_domain(Solution, 1, 9),

    Row1 = [S11, S12, S13, S14, S15, S16, S17, S18, S19],
    Row2 = [S21, S22, S23, S24, S25, S26, S27, S28, S29],
    Row3 = [S31, S32, S33, S34, S35, S36, S37, S38, S39],
    Row4 = [S41, S42, S43, S44, S45, S46, S47, S48, S49],
    Row5 = [S51, S52, S53, S54, S55, S56, S57, S58, S59],
    Row6 = [S61, S62, S63, S64, S65, S66, S67, S68, S69],
    Row7 = [S71, S72, S73, S74, S75, S76, S77, S78, S79],
    Row8 = [S81, S82, S83, S84, S85, S86, S87, S88, S89],
    Row9 = [S91, S92, S93, S94, S95, S96, S97, S98, S99],

    Col1 = [S11, S21, S31, S41, S51, S61, S71, S81, S91],
    Col2 = [S12, S22, S32, S42, S52, S62, S72, S82, S92],
    Col3 = [S13, S23, S33, S43, S53, S63, S73, S83, S93],
    Col4 = [S14, S24, S34, S44, S54, S64, S74, S84, S94],
    Col5 = [S15, S25, S35, S45, S55, S65, S75, S85, S95],
    Col6 = [S16, S26, S36, S46, S56, S66, S76, S86, S96],
    Col7 = [S17, S27, S37, S47, S57, S67, S77, S87, S97],
    Col8 = [S18, S28, S38, S48, S58, S68, S78, S88, S98],
    Col9 = [S19, S29, S39, S49, S59, S69, S79, S89, S99],

    Square1 = [S11, S12, S13, S21, S22, S23, S31, S32, S33],
    Square2 = [S14, S15, S16, S24, S25, S26, S34, S35, S36],
    Square3 = [S17, S18, S19, S27, S28, S29, S37, S38, S39],
    Square4 = [S41, S42, S43, S51, S52, S53, S61, S62, S63],
    Square5 = [S44, S45, S46, S54, S55, S56, S64, S65, S66],
    Square6 = [S47, S48, S49, S57, S58, S59, S67, S68, S69],
    Square7 = [S71, S72, S73, S81, S82, S83, S91, S92, S93],
    Square8 = [S74, S75, S76, S84, S85, S86, S94, S95, S96],
    Square9 = [S77, S78, S79, S87, S88, S89, S97, S98, S99],

    valid([Row1, Row2, Row3, Row4, Row5, Row6, Row7, Row8, Row9,
           Col1, Col2, Col3, Col4, Col5, Col6, Col7, Col8, Col9,
           Square1, Square2, Square3, Square4, Square5, Square6, Square7, Square8, Square9]).


% Test with the following, from https://bogglebrain.com/sudoku-puzzles/sudoku-9x9-free-printable/:
% This is easy book 1 #1
% sudoku9(
%     [4, 8, _, 5, 2, _, 7, _, _,
%      _, _, 3, 8, _, 4, 9, 1, _,
%      1, 6, 5, 7, 9, _, 2, 8, _,
%      8, _, _, 4, 7, 9, 5, 2, _,
%      9, _, _, 2, _, _, 6, 7, 8,
%      2, _, _, 1, _, _, 3, _, _,
%      6, _, 8, 3, _, _, 4, 5, 2,
%      5, 7, 1, _, 4, _, _, 6, 3,
%      3, _, 2, 6, 5, 8, 1, _, 7],
%     What).
% Expect What to be
%     [4, 8, 9, 5, 2, 1, 7, 3, 6,
%     7, 2, 3, 8, 6, 4, 9, 1, 5,
%     1, 6, 5, 7, 9, 3, 2, 8, 4,
%     8, 3, 6, 4, 7, 9, 5, 2, 1,
%     9, 1, 4, 2, 3, 5, 6, 7, 8,
%     2, 5, 7, 1, 8, 6, 3, 4, 9,
%     6, 9, 8, 3, 1, 7, 4, 5, 2,
%     5, 7, 1, 9, 4, 2, 8, 6, 3,
%     3, 4, 2, 6, 5, 8, 1, 9, 7]
% TODO: this doesn't seem to work completely. E.g. the following puzzle doesn't give a unique solution.
% This is very hard book 1 #1.
% sudoku9(
%     [_, _, _, _, _, _, _, 1, 8,
%      3, 9, _, _, _, _, _, 7, _,
%      _, _, 4, _, _, 7, _, _, _,
%      _, _, _, 7, _, 2, _, _, _,
%      _, _, 2, _, _, _, 6, _, 7,
%      1, _, _, 6, _, _, 4, _, _,
%      _, _, _, _, 8, _, _, _, 3,
%      _, _, _, _, _, _, 2, _, 5,
%      4, _, _, 9, 3, _, _, _, _],
%     What).
% This is hard book 1 #3
% sudoku9(
%     [_, 4, _, _, 5, _, 8, _, _,
%      _, _, _, _, _, 4, _, _, 9,
%      8, _, _, _, 9, 1, _, _, _,
%      _, 5, _, 2, _, 3, _, 6, _,
%      1, _, _, _, 7, 5, 2, _, _,
%      _, _, _, _, _, _, 5, _, 8,
%      _, _, _, 1, _, _, _, _, 2,
%      _, 3, 6, 5, _, _, 1, _, 7,
%      2, _, 9, _, _, _, 4, _, _],
%     What).
