type gakusei_t =
  { namae : string
  ; tensuu : int
  ; seiseki : string
  }

(* gakusei_t list 型のデータの例 *)
let lst1 = []
let lst2 = [ { namae = "asai"; tensuu = 70; seiseki = "B" } ]

let lst3 =
  [ { namae = "asai"; tensuu = 70; seiseki = "B" }
  ; { namae = "kaneko"; tensuu = 85; seiseki = "A" }
  ; { namae = "hyuga"; tensuu = 60; seiseki = "C" }
  ]
;;

let lst4 =
  [ { namae = "yoshida"; tensuu = 80; seiseki = "A" }
  ; { namae = "asai"; tensuu = 70; seiseki = "B" }
  ; { namae = "kaneko"; tensuu = 85; seiseki = "A" }
  ]
;;

(* 目的: 学生リスト lst のうち各成績の人数を集計する *)
(* shukei : gakusei_t list -> int * int * int * int *)
let rec shukei lst =
  match lst with
  | [] -> 0, 0, 0, 0
  | { namae = n; tensuu = t; seiseki = s } :: rest ->
    let a, b, c, d = shukei rest in
    if s = "A"
    then a + 1, b, c, d
    else if s = "B"
    then a, b + 1, c, d
    else if s = "C"
    then a, b, c + 1, d
    else a, b, c, d + 1
;;

(* tests *)
let test1 = shukei lst1 = (0, 0, 0, 0)
let test2 = shukei lst2 = (0, 1, 0, 0)
