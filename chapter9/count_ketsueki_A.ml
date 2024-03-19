(* 人のデータ(名前、身長(m), 体重(kg), 誕生日(month, day), 血液型)を表す型 *)
type person_t = {
        name: string;
        height: float;
        weight: float;
        birth: int * int;
        blood: string;
}

(* person_t list 型のデータの例 *)
let lst1 = []
let lst2 = [{name = "tanaka"; height = 1.7; weight = 56.0; birth = (1, 2); blood = "AB"}]
let lst3 = [{name = "tanaka"; height = 1.7; weight = 56.0; birth = (1, 2); blood = "AB"};
            {name = "sasaki"; height = 1.6; weight = 46.0; birth = (12, 3); blood = "A"}]
let lst4 = [{name = "tanaka"; height = 1.7; weight = 56.0; birth = (1, 2); blood = "AB"};
            {name = "sasaki"; height = 1.6; weight = 46.0; birth = (12, 3); blood = "A"};
            {name = "gotou"; height = 1.8; weight = 86.0; birth = (2, 13); blood = "A"}]

(* 目的: person_t list を受取り、血液型がA型の人数を返す *)
(* count_ketsueki_A: person_t list -> int *)
let rec count_ketsueki_A lst = match lst with
        [] -> 0
        | {blood = b} :: rest -> if b = "A" then 1 + count_ketsueki_A rest else count_ketsueki_A rest

(* tests *)
let test1 = count_ketsueki_A lst1 = 0 
let test2 = count_ketsueki_A lst2 = 0 
let test3 = count_ketsueki_A lst3 = 1 
let test4 = count_ketsueki_A lst4 = 2

