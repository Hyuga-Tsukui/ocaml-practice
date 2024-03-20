type gakusei_t = {
        namae: string;
        tensuu: int;
        seiseki: string;
}

(* gakusei_t list 型のデータの例 *)
let lst1 = []
let lst2 = [{namae = "asai"; tensuu = 70; seiseki = "B"}]
let lst3 = [{namae = "asai"; tensuu = 70; seiseki = "B"};
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}]
let lst4 = [{namae = "yoshida"; tensuu = 80; seiseki = "A"};
            {namae = "asai"; tensuu = 70; seiseki = "B"};
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}]

(* 目的: ソート済みのgakusei_t listとgakusei_t g を受取り、lst に点数の昇順となるようにgを挿入したリストを返す *)
let rec gakusei_insert lst g = match lst with
        [] -> [g]
        | {namae=n; tensuu=t; seiseki=s} as first :: rest -> 
                        if t < g.tensuu then first :: gakusei_insert rest g else g :: lst 
(* tests *)
let test1 = gakusei_insert lst1 {namae = "hyuga"; tensuu = 69; seiseki = "C"} = [{namae = "hyuga"; tensuu = 69; seiseki = "C"}]
let test2 = gakusei_insert lst2 {namae = "hyuga"; tensuu = 69; seiseki = "C"} = [{namae = "hyuga"; tensuu = 69; seiseki = "C"}; {namae = "asai"; tensuu = 70; seiseki = "B"}]

(* gakusei_t 型の lst を受取り、tensuu の昇順に並び替えて lst を返す *)
(* gakusei_sort: gakusei_t list -> gakusei_t list *)
let rec gakusei_sort lst = match lst with
        [] -> []
        | {namae=n; tensuu=t; seiseki=s} as first :: rest -> gakusei_insert (gakusei_sort rest) first 

(* tests *)
let test1 = gakusei_sort lst1 = []
let test2 = gakusei_sort lst2 = [{namae = "asai"; tensuu = 70; seiseki = "B"}]
let test3 = gakusei_sort lst3 = [{namae = "asai"; tensuu = 70; seiseki = "B"}; {namae = "kaneko"; tensuu = 85; seiseki = "A"}]
let test4 = gakusei_sort lst4 = [{namae = "asai"; tensuu = 70; seiseki = "B"}; {namae = "yoshida"; tensuu = 80; seiseki = "A"}; {namae = "kaneko"; tensuu = 85; seiseki = "A"}]
