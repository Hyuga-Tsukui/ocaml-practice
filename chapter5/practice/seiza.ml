(* 目的:誕生日（月 m, 日, d）から対象の星座の名前をラテン語で計算する *)

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

(* seiza: int -> int -> string *)
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

(* テスト *)
let test1 = seiza 3 21 = aries
let test2 = seiza 4 1 = aries
let test3 = seiza 4 19 = aries

let test4 = seiza 4 20 = taurus
let test5 = seiza 5 1 = taurus
let test6 = seiza 5 20 = taurus

let test7 = seiza 5 21 = gemini
let test8 = seiza 6 21 = gemini
let test9 = seiza 6 1 = gemini

let test9 = seiza 6 22 = cancer
let test10 = seiza 7 22 = cancer
let test11 = seiza 7 1 = cancer

let test12 = seiza 7 23 = leo 
let test13 = seiza 8 22 = leo 
let test14 = seiza 8 2 = leo 

let test15 = seiza 8 23 = virgo
let test16 = seiza 9 22 = virgo
let test17 = seiza 9 2 = virgo

let test18 = seiza 9 23 = libra 
let test19 = seiza 10 23 = libra 
let test20 = seiza 10 2 = libra 

let test21 = seiza 10 24 = scorpius
let test22 = seiza 11 22 = scorpius
let test23 = seiza 11 2 = scorpius

let test24 = seiza 11 23 = sagittarius 
let test25 = seiza 12 21 = sagittarius 
let test26 = seiza 12 2 = sagittarius 

let test27 = seiza 12 22 = capricorunus
let test28 = seiza 1 19 = capricorunus
let test29 = seiza 1 2 = capricorunus

let test30 = seiza 1 20 = aquarius
let test31 = seiza 2 18 = aquarius
let test32 = seiza 2 2 = aquarius

let test33 = seiza 2 19 = pisces
let test34 = seiza 3 20 = pisces
let test35 = seiza 3 1 = pisces

