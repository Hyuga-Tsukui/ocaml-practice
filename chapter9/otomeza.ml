(* 人のデータ(名前、身長(m), 体重(kg), 誕生日(month, day), 血液型)を表す型 *)
type person_t = {
        name: string;
        height: float;
        weight: float;
        birth: int * int;
        blood: string;
}

(* 12星座 *)
let aries = "Aries"
let taurus = "Taurus"
let gemini = "Gemini"
let cancer = "Cancer"
let leo = "Leo"
let virgo = "Virgo"
let libra = "Libra"
let scorpius = "Scorpius"
let sagittarius = "Sagittarius"
let capricorunus = "Capricorunus"
let aquarius = "Aquarius"
let pisces = "Pisces"

let seiza m d = 
        if (m = 3 && 21 <= d) || (m = 4 && d <= 19) then aries 
        else if (m = 4 && 20 <= d) || (m = 5 && d <= 20) then taurus 
        else if (m = 5 && 21 <= d) || (m = 6 && d <= 21) then gemini 
        else if (m = 6 && 22 <= d) || (m = 7 && d <= 22) then cancer 
        else if (m = 7 && 23 <= d) || (m = 8 && d <= 22) then leo 
        else if (m = 8 && 23 <= d) || (m = 9 && d <= 22) then virgo 
        else if (m = 9 && 23 <= d) || (m = 10 && d <= 23) then libra 
        else if (m = 10 && 24 <= d) || (m = 11 && d <= 22) then scorpius
        else if (m = 11 && 23 <= d) || (m = 12 && d <= 21) then sagittarius
        else if (m = 12 && 22 <= d) || (m = 1 && d <= 19) then capricorunus
        else if (m = 1 && 20 <= d) || (m = 2 && d <= 18) then aquarius
        else if (m = 2 && 19 <= d) || (m = 3 && d <= 20) then pisces
        else "unknown"

(* person_t list 型のデータの例 *)
let lst1 = []
let lst2 = [{name = "tanaka"; height = 1.7; weight = 56.0; birth = (1, 2); blood = "AB"}]
let lst3 = [{name = "tanaka"; height = 1.7; weight = 56.0; birth = (1, 2); blood = "AB"};
            {name = "sasaki"; height = 1.6; weight = 46.0; birth = (9, 2); blood = "A"}]
let lst4 = [{name = "tanaka"; height = 1.7; weight = 56.0; birth = (1, 2); blood = "AB"};
            {name = "sasaki"; height = 1.6; weight = 46.0; birth = (9, 2); blood = "A"};
            {name = "gotou"; height = 1.8; weight = 86.0; birth = (8, 23); blood = "A"}]

(* 目的: person_t list を受取り、誕生日の星座が乙女座の人の名前のみのリストを作成する *)
(* otomeza: person_t list -> string list *)
let rec otomeza lst = match lst with
        [] -> []
        | {birth = (m, d); name = n} :: rest -> if seiza m d = virgo then n :: otomeza rest else otomeza rest 

(* tests *)
let test1 = otomeza lst1 = []
let test2 = otomeza lst2 = []
let test3 = otomeza lst3 = ["sasaki"]
let test4 = otomeza lst4 = ["sasaki"; "gotou"]

