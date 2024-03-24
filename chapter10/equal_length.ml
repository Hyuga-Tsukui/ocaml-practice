(* 目的: 2つのリスト lst1 と lst2 の長さが等しいかどうかを判定する （length関数は使用しないこと) *)
(* equal_length : `a list -> `a list -> bool *)
let rec equal_length lst1 lst2 =
  match lst1, lst2 with
  | [], [] -> true
  | [], f2 :: r2 -> false
  | f1 :: r1, [] -> false
  | f1 :: r1, f2 :: r2 -> equal_length r1 r2
;;

(* tests *)
let test1 = equal_length [] [] = true
let test2 = equal_length [] [ 1 ] = false
let test3 = equal_length [ 1 ] [] = false
let test4 = equal_length [ 1 ] [ 2 ] = true
let test5 = equal_length [ 1; 3 ] [ 2 ] = false
let test6 = equal_length ["a"] ["b"] = true
let test7 = equal_length ["a"] [1] = true
