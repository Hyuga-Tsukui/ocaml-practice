(* 目的: 昇順にソートされた int list の lst と 整数 n を受取り n を lst の昇順を崩さずに挿入した lst を返す *)
(* insert: int list -> int -> int list *)
let rec insert lst n = match lst with
        [] -> [n]
        | first :: rest -> if first <= n then first :: (insert rest n) else n :: first :: rest 

(* tests *)
let test1 = insert [] 1 = [1]
let test2 = insert [1; 3] 2 = [1; 2; 3]
let test3 = insert [1; 2; 3] 4 = [1; 2; 3; 4]

