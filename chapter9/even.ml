(* 目的: 整数のリスト lst を受け取り、その中の偶数の要素のみを含むリストを計算する *)
(* even: int list -> int list *)
let rec even = function
        [] -> []
        | first :: rest -> if first mod 2 == 0 then first :: even rest else even rest

(* tests *)
let test1 = even [] = []
let test2 = even [0] = [0]
let test3 = even [1; 2] = [2]
let tese4 = even [1; 2; 3; 6] = [2; 6]

