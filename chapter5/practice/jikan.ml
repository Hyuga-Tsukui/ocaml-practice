(* 目的:時間（24時制）xを受取り午前であればAMを午後であればPMを返す *)
(* jikan: x -> string *)
let jikan x = if 0 <= x && x < 12 then "AM" else "PM" 

(* テスト *)
let test1 = jikan 7 = "AM"
let test2 = jikan 0 = "AM"
let test3 = jikan 12 = "PM"