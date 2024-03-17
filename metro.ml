(* 駅の名前情報を表すデータ型 *)
type ekimei_t = {
        kanji: string;
        kana: string;
        romaji: string;
        shozoku: string;
}

(* 駅間の情報を表すデータ型 *)
type ekikan_t = {
        kiten: string;
        syuten: string;
        keiyu: string;
        kyori: float;
        jikan: int;
}

(* 目的: ekimei_t型を受取りekimei情報の文字列を返す *)
(* hyoji: ekimei_t -> string *)
let hyoji ekimei = match ekimei with
        {shozoku=route; kanji=name; kana=k_name;} -> route ^ "," ^ name ^ "（" ^ k_name ^ "）"

(* tests *)
let test1 = hyoji {kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"} =
        "丸ノ内線,茗荷谷（みょうがだに）"
