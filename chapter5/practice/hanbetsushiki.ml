(* 目的:2次方程式 ax^2+bx+c=0 の係数a,b,cを受取り判別式の値を計算する *)
(* 条件: aは0でない *)

(* hanbetsushiki: float -> float -> float -> float *)
let hanbetsushiki a b c = (b ** 2.0) -. (4.0 *. a *. c)

(* テスト *)
let test1 = hanbetsushiki 3.0 6.0 2.0 = 12.0

(* 目的:2次方程式 ax^2+bx+c=0 の係数a,b,cを受取り解の個数を計算する *)

(* kai_no_kosuu: float -> float -> float -> int *)
let kai_no_kosuu a b c =
  let d = hanbetsushiki a b c in
  if d > 0.0 then 2 else if d = 0.0 then 1 else 0
;;

(* テスト *)
let test1 = kai_no_kosuu 3.0 6.0 2.0 = 2
let test2 = kai_no_kosuu 1.0 (-6.0) 9.0 = 1
let test3 = kai_no_kosuu (-1.0) 3.0 (-2.0) = 2
let test4 = kai_no_kosuu 15.0 24.0 10.0 = 0

(* 目的:2次方程式 ax^2+bx+c=0 の係数a,b,cを受取り虚数解を持つかチェックする *)

(* kyosuukai: float -> float -> float -> bool *)
let kyosuukai a b c =
  let d = hanbetsushiki a b c in
  if d < 0.0 then true else false
;;

(* テスト *)
let test1 = kyosuukai 2.0 (-3.0) 5.0 = true
let test2 = kyosuukai 16.0 (-24.0) 9.0 = false
