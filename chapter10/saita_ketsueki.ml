#use "ketsueki_shukei.ml"

let rec max lst =
  match lst with
  | [] -> 0
  | first :: rest ->
    let m = max rest in
    if first > m then first else m
;;

let max_test1 = max [ 1; 2; 4; 1 ] = 4

(* 目的: person_t 型のリストを受取り、4つの血液型のうち最も人数の多い血液型を返す *)
(* saita_ketsueki : person_t list -> string *)
let saita_ketsueki lst =
  let a, b, ab, o = ketsueki_syukei lst in
  if max [ b; ab; o ] < a
  then "A"
  else if max [ a; ab; o ] < b
  then "B"
  else if max [ a; b; o ] < ab
  then "AB"
  else "O"
;;
