#use "ketsueki_shukei.ml"

let max a b = if a < b then b else a

(* 目的: person_t 型のリストを受取り、4つの血液型のうち最も人数の多い血液型を返す *)
(* saita_ketsueki : person_t list -> string *)
let saita_ketsueki lst =
  let a, b, ab, o = ketsueki_syukei lst in
  let max_bl = max (max a b) (max ab o) in
  if max_bl = a
  then "A"
  else if max_bl = b
  then "B"
  else if max_bl = ab
  then "AB"
  else "O"
;;
