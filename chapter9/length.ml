(* 目的: 受け取ったリスト lst の要素の数を求める *)
(* length: int list -> int *)
let rec length = function
  | [] -> 0
  | first :: rest -> 1 + length rest
;;

(* tests *)
let test1 = length [] = 0
let test2 = length [ 1 ] = 1
let test3 = length [ 1; 2; 3 ] = 3
