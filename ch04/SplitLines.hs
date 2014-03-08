
module SplitLines where

splitLines string = splitLines' [] string
    where splitLines' list [] = list
          splitLines' soFar string = 
            let (line, others) = break isLineTerm string
                newList = (soFar ++ [line])
            in case others of
                    ('\r':'\n':rest) -> splitLines' newList rest
                    ('\r':rest) -> splitLines' newList rest
                    ('\n':rest) -> splitLines' newList rest
                    _ -> splitLines' newList others

isLineTerm c = c == '\r' || c == '\n'