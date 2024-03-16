(* 目的:鶴の数xに対する足の数の合計を計算する *)
(* tsuru_no_ashi: int -> int *)
let tsuru_no_ashi x = x * 2 

(* テスト　*)
let test1 = tsuru_no_ashi 2 = 4
let test2 = tsuru_no_ashi 23 = 46
let test3 = tsuru_no_ashi 0 = 0

(* 目的：亀の数xに対する足の数の合計を計算する *)
(* kamen_no_ashi: int -> int *)
let kame_no_ashi x = x * 4 

(* テスト　*)
let test1 = kame_no_ashi 2 = 8 
let test2 = kame_no_ashi 23 = 92 
let test3 = kame_no_ashi 0 = 0