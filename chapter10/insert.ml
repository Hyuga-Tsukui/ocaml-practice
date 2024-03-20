(* 目的: 昇順にソートされた int list の lst と 整数 n を受取り n を lst の昇順を崩さずに挿入した lst を返す *)
(* insert: int list -> int -> int list *)
let rec insert lst n = match lst with
        [] -> [n]
        | first :: rest -> if first < n then first :: (insert rest n) else n :: lst 

(* tests *)
let test1 = insert [] 1 = [1]
let test2 = insert [1; 3] 2 = [1; 2; 3]
let test3 = insert [1; 2; 3] 4 = [1; 2; 3; 4]


(* 目的: 整数のリスト lst を受取り、それを昇順にしたリストを返す *)
(* ins_sort: int list -> int list *)
let rec ins_sort lst = match lst with
        [] -> []
        | first :: rest -> insert (ins_sort rest) first 

(* tests *)
let test4 = ins_sort [] = []
let test5 = ins_sort [3; 2] = [2; 3]
let test6 = ins_sort [4; 5; 3; 2] = [2; 3; 4; 5]
let test7 = ins_sort [3; 2; 1] = [1; 2; 3]
