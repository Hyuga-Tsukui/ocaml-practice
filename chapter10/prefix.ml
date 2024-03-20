
(* 目的: 要素 e と接頭語 lst を受取り、各接頭語に要素 e を加えた新たなリストを返す *)
(* add_to_each: int -> int list -> int list *)
let rec add_to_each e lst = match lst with
        [] -> []
        | first :: rest -> (e :: first) :: add_to_each e rest 

(* 目的: int list 型を受取り、list を切り取った 接頭語のリストを返す *)
(* prefix: int list -> int list *)
let rec prefix lst = match lst with
        [] -> []
        | first :: rest -> [first] :: add_to_each first (prefix rest) 


(* tests *)
let test1 = add_to_each 1 [] = []
let test2 = add_to_each 1 [[2]] = [[1; 2]]
let test3 = add_to_each 1 [[2]; [2; 3]] = [[1; 2]; [1; 2; 3]]
let test4 = add_to_each 1 [[2]; [2; 3]; [2; 3; 4]] = [[1; 2]; [1; 2; 3]; [1; 2; 3; 4]]

let test5 = prefix [] = []
let test6 = prefix [1] = [[1]]
let test7 = prefix [1; 2] = [[1]; [1; 2]]
let test8 = prefix [1; 2; 3; 4] = [[1]; [1; 2]; [1; 2; 3]; [1; 2; 3; 4]]
