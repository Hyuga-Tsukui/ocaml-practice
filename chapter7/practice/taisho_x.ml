(* 目的: 平面上の座標 point を受取り、x軸について対象な座標を計算する *)
(* taisho_x: float * float -> float * float *)
let taisho_x point =
  match point with
  | x, y -> -.x, y
;;

(* tests *)
let test1 = taisho_x (1.0, 1.0) = (-1.0, 1.0)
let test2 = taisho_x (0.0, 1.0) = (0.0, 1.0)
let test3 = taisho_x (-3.0, 1.0) = (3.0, 1.0)
