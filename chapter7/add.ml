(* 目的:ふたつの整数の組pair を受取りその要素の和を返す *)
(* add: int * int -> int *)
let add pair =
  match pair with
  | a, b -> a + b
;;

(* tests *)
let test1 = add (0, 0) = 0
let test2 = add (3, 5) = 8
let test3 = add (3, -5) = -2
