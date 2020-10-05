# Haskell Connect-4
Build using haskell stack (all the game code is contained in [Main.hs](https://github.com/itsFrank/hs-connect4/blob/master/app/Main.hs))

Currently it has a basic game loop, that allows player moves and printing the state of the board.

End condition checks are missing, so a game can go in indefinitley. The board is also allowed to have infinite height.

Sample Output:
```
Enter board width (3-9): 
7
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
---------------
 1 2 3 4 5 6 7 
Player x to move (-1 to quit):
3
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | |x| | | | |
---------------
 1 2 3 4 5 6 7 
Player o to move (-1 to quit):
4
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | |x|o| | | |
---------------
 1 2 3 4 5 6 7 
Player x to move (-1 to quit):
5
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | |x|o|x| | |
---------------
 1 2 3 4 5 6 7 
Player o to move (-1 to quit):
3
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | |o| | | | |
| | |x|o|x| | |
---------------
 1 2 3 4 5 6 7 

```
