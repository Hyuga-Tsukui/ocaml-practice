(* 目的: 0 から受け取った自然数nまでの2乗の和を求める *)
(* sum_of_square: int -> int *)
let rec sum_of_square n = if n = 0 then 0 else (n * n) + sum_of_square (n - 1)

(* tests *)
let test1 = sum_of_square 0 = 0
let test2 = sum_of_square 4 = 30
