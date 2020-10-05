module Main where

import Lib
import Data.List

genBoard :: Int -> [[Char]]
genBoard width =  [[] | x <- [1..width]]

printBoardRow :: Int -> [[Char]] -> IO()
printBoardRow row board = putStrLn ('|':(concat ([ [ if length col >= row then col!!(row-1) else ' ', '|' ] | col <- board ])))

maxRow :: [[Char]] -> Int
maxRow board = maximum [ length col | col <- board ]

printBoard :: [[Char]] -> Int -> IO()
printBoard board 0 = putStrLn [ '-' | x <- [0..length board * 2]] >>
    putStrLn [ if mod x 2 == 1 then head (show (div (x + 1) 2) ) else ' ' | x <- [0..length board * 2]]
printBoard board row = printBoardRow row board >> printBoard board (row-1)

insertBoard :: [[Char]] -> Int -> Char -> [[Char]]
insertBoard board i a = [ if c == i then (col ++ [a]) else col | (col,c) <- zip board  [1..length board] ]

playerMove :: Char -> [[Char]] -> Int -> IO()
playerMove p board w = do
    putStrLn ("Player " ++ [p] ++ " to move (-1 to quit):")
    col <- readLn :: IO Int
    if col == -1 then
        return ()
    else do
        if col <= 0 || col > w then
            playerMove p board w
        else do
            let newBoard = insertBoard board col p
            printBoard newBoard (max 5 (maxRow board))
            if p == 'x' then
                playerMove 'o' newBoard w
            else
                playerMove 'x' newBoard w

main :: IO()
main = do
    putStrLn "Enter board width (3-9): "
    width <- readLn :: IO Int
    let board = genBoard width
    printBoard board 5
    playerMove 'x' board width
