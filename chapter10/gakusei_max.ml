type gakusei_t =
  { namae : string
  ; tensuu : int
  ; seiseki : string
  }

(* gakusei_t list 型のデータの例 *)

let lst1 =
  [ { namae = "asai"; tensuu = 70; seiseki = "B" }
  ; { namae = "kaneko"; tensuu = 85; seiseki = "A" }
  ]
;;

let lst2 =
  [ { namae = "yoshida"; tensuu = 80; seiseki = "A" }
  ; { namae = "asai"; tensuu = 70; seiseki = "B" }
  ; { namae = "kaneko"; tensuu = 85; seiseki = "A" }
  ]
;;

(* 目的: 受け取った gakusei_t lst の最高点を持つ gakusei_t レコードを返す *)
(* gakusei_max : gakusei_t list -> gakusei_t *)
let rec gakusei_max lst =
  match lst with
  | [] -> { namae = ""; tensuu = 0; seiseki = "" }
  | ({ namae = n; tensuu = t; seiseki = s } as first) :: rest ->
    let max_rest = gakusei_max rest in
    (match max_rest with
     | { namae = n_max; tensuu = t_max; seiseki = s_max } ->
       if t_max < t then first else max_rest)
;;

let test1 = gakusei_max lst1 = { namae = "kaneko"; tensuu = 85; seiseki = "A" }
let test2 = gakusei_max lst2 = { namae = "kaneko"; tensuu = 85; seiseki = "A" }
