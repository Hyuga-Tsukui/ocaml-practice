(* 目的:a,b,c,d,e の5つの値（整数）合計点と平均点を計算する *)

let goukei_to_heikin a b c d e =
  let sum = a + b + c + d + e in
  sum, float_of_int sum /. 5.0
;;

(* tests *)
let test1 = goukei_to_heikin 10 10 10 10 10 = (50, 10.0)
let test2 = goukei_to_heikin 0 40 90 85 83 = (298, 59.6)
