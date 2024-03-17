(* 目的:名前と成績のtuplを受けとり成績を表す文字列を計算する *)
(* seiseki: string * string -> string *)
let seiseki record = match record with
        (a, b) -> a ^ "さんの評価は" ^ b ^ "です"

(* tests *)
let test1 = seiseki ("田中", "A") = "田中さんの評価はAです"
