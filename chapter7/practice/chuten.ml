(* 目的: 平面上の座標2点を受取り、その中点を計算する *)
(* chuten: ((float * float) * (float * float)) -> float * float *)
let chuten zahyo =
  match zahyo with
  | (x1, y1), (x2, y2) -> (x1 +. x2) /. 2.0, (y1 +. y2) /. 2.0
;;

(* tests *)
let test1 = chuten ((3.0, 1.0), (2.0, -2.0)) = (5.0 /. 2.0, -1.0 /. 2.0)
