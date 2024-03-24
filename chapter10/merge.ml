(* 昇順に並んでいるリスト lst1 と lst2 をマージする *)
(* merge : int list -> int list -> int list *)
let rec merge lst1 lst2 =
  match lst1, lst2 with
  | [], [] -> []
  | [], first2 :: rest2 -> lst2
  | first1 :: rest1, [] -> lst1
  | first1 :: rest1, first2 :: rest2 ->
    let merged_rest = merge rest1 rest2 in
    if first1 < first2
    then first1 :: first2 :: merged_rest
    else first2 :: first1 :: merged_rest
;;

(* tests *)
let test1 = merge [] [] = []
let test2 = merge [] [ 1; 2 ] = [ 1; 2 ]
let test3 = merge [ 1; 2 ] [] = [ 1; 2 ]
let test4 = merge [ 2; 5 ] [ 1; 4 ] = [ 1; 2; 4; 5 ]
