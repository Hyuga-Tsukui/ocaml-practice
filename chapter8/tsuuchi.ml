type gakusei_t =
  { namae : string
  ; tensuu : int
  ; seiseki : string
  }

(* 目的: gakusei_t型のレコードのtensuuから成績を計算し新たなgakusei_t型のレコードを作る *)
let hyouka gakusei =
  match gakusei with
  | { namae = n; tensuu = t } ->
    { namae = n
    ; tensuu = t
    ; seiseki =
        (if t >= 80 then "A" else if t >= 70 then "B" else if t >= 60 then "B" else "D")
    }
;;

(* tests *)
let test1 =
  hyouka { namae = "asai"; tensuu = 70; seiseki = "" }
  = { namae = "asai"; tensuu = 70; seiseki = "B" }
;;

(* 目的: gakusei_t型のレコードから成績を通知する文字列を計算する *)
(* tsuuchi: gakusei_t -> string *)
let tsuuchi gakusei =
  match gakusei with
  | { namae = n; tensuu = t; seiseki = s } ->
    n ^ "さんは" ^ string_of_int t ^ "点で、成績は" ^ s ^ "です。"
;;

(* tests *)
let test1 = tsuuchi { namae = "asai"; tensuu = 70; seiseki = "B" } = "asaiさんは70点で、成績はBです。"

let test2 =
  tsuuchi (hyouka { namae = "asai"; tensuu = 70; seiseki = "" }) = "asaiさんは70点で、成績はBです。"
;;
