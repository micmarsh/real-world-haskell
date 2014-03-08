module Main where

data Book = Book Int String [String]
                deriving (Show)

data Magazine = Magazine Int String [String]
                deriving (Show)

main = getLine >>= putStrLn