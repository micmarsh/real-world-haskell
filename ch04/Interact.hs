module Main where

import System.Environment (getArgs)

interactWith :: (String -> String) -> String -> String -> IO ()
interactWith function inputFile outputFile = do
    input <- readFile inputFile
    writeFile outputFile (function input)

main = mainWith myFunction
    where mainWith function = do
            args <- getArgs
            case args of 
                [input, output] -> interactWith function input output
                _ -> putStrLn "error: U need some args, dawg"
          myFunction = show . length