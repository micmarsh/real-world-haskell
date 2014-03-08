module Main where

data Book = Book Integer String [String]
                deriving (Show)

data Magazine = Magazine Integer String [String]
                deriving (Show)

data BookReview = BookReview Book CustomerID String

myInfo = Book 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege de Moor"]

main = getLine >>= putStrLn 