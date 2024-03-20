(* 人のデータ(名前、身長(m), 体重(kg), 誕生日(month, day), 血液型)を表す型 *)
type person_t =
  { name : string
  ; height : float
  ; weight : float
  ; birth : int * int
  ; blood : string
  }

(* 目的: 人のデータperson_tを受取り、名前と血液型の文字列を計算する *)
(* ketsueki_hyoji: person_t -> string *)
let ketsueki_hyoji person =
  match person with
  | { name = n; blood = b } -> n ^ "さんの血液型は" ^ b ^ "型です"
;;

(* tests *)
let test1 =
  ketsueki_hyoji
    { name = "hyuga"; height = 1.6; weight = 48.0; birth = 1, 7; blood = "AB" }
  = "hyugaさんの血液型はAB型です"
;;
