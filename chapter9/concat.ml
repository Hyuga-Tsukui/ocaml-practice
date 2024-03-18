(* 目的: 文字列のリスト lst を受取り、各要素を結合した文字列を返す *)
(* concat: string list -> string *)
let rec concat = function 
        [] -> ""
        | first :: rest -> first ^ concat rest 

(* tests *)
let test1 = concat [] = ""
let test2 = concat ["春"] = "春"
let test3 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"

