^+c:: random_Chars(10)



;-------------------------------------------------------------------------------
random_Chars(Count) { ; returns count random characters
;-------------------------------------------------------------------------------
    static Char_List := "ABCDEFGHIJKLMNOPQRSTUVW"
                     .  "abcdefghijklmnopqrstuvw"
    , Length := StrLen(Char_List)

    Loop, %Count% {
        Random, rand, 1, Length
        Result .= SubStr(Char_List, rand, 1)
    }
    clipboard := Result
}
