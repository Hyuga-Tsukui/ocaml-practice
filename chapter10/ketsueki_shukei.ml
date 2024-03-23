(* 人のデータ(名前、身長(m), 体重(kg), 誕生日(month, day), 血液型)を表す型 *)
type person_t =
  { name : string
  ; height : float
  ; weight : float
  ; birth : int * int
  ; blood : string
  }

(* person_t list 型のデータの例 *)
let lst1 = []

let lst2 =
  [ { name = "tanaka"; height = 1.7; weight = 56.0; birth = 1, 2; blood = "AB" } ]
;;

let lst3 =
  [ { name = "tanaka"; height = 1.7; weight = 56.0; birth = 1, 2; blood = "AB" }
  ; { name = "sasaki"; height = 1.6; weight = 46.0; birth = 9, 2; blood = "A" }
  ]
;;

let lst4 =
  [ { name = "tanaka"; height = 1.7; weight = 56.0; birth = 1, 2; blood = "AB" }
  ; { name = "sasaki"; height = 1.6; weight = 46.0; birth = 9, 2; blood = "A" }
  ; { name = "gotou"; height = 1.8; weight = 86.0; birth = 8, 23; blood = "A" }
  ]
;;

(* 目的: pserson_t 型のリストを受取り、各血液型の人数を組みで返す *)
(* ketsueki_syukei : person_t list -> int * int * int * int *)
let rec ketsueki_syukei lst =
  match lst with
  | [] -> 0, 0, 0, 0
  | { blood = bl } :: rest ->
    let a, b, ab, o = ketsueki_syukei rest in
    if bl = "A"
    then a + 1, b, ab, o
    else if bl = "B"
    then a, b + 1, ab, o
    else if bl = "AB"
    then a, b, ab + 1, o
    else a, b, ab, o + 1
;;

(* tests *)
let test1 = ketsueki_syukei lst1 = (0, 0, 0, 0)
let test2 = ketsueki_syukei lst2 = (0, 0, 1, 0)
let test3 = ketsueki_syukei lst3 = (1, 0, 1, 0)
let test4 = ketsueki_syukei lst4 = (2, 0, 1, 0)
