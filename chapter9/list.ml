(* 問題9.1 *)
let season = "春" :: "夏" :: "秋" :: "冬" :: []

(* 問題9.2 *)

(* 人のデータ(名前、身長(m), 体重(kg), 誕生日(month, day), 血液型)を表す型 *)
type person_t = {
        name: string;
        height: float;
        weight: float;
        birth: int * int;
        blood: string;
}

let persons =
        {name="田中"; height=1.7; weight=68.0; birth=(3, 21); blood="A"}
        ::{name="山田"; height=1.5; weight=41.0; birth=(9, 12); blood="AB"}
        ::{name="佐藤"; height=1.75; weight=61.0; birth=(11, 2); blood="O"}
        ::[]
