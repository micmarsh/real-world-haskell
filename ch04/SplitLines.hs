module SplitLines where

splitLines string = splitLines' [] string
    where splitLines' list [] = list
          splitLines' soFar string = 
            let (line, others) = break isLineTerm string
                newList = if line == "" then soFar else (soFar ++ [line])
            in case others of
                    ('\r':'\n':rest) -> splitLines' newList rest
                    ('\r':rest) -> splitLines' newList rest
                    ('\n':rest) -> splitLines' newList rest
                    _ -> splitLines' newList others

isLineTerm c = c == '\r' || c == '\n'
