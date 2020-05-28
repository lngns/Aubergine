module BordelMatrix where

-- http://hackage.haskell.org/package/bed-and-breakfast-0.5/docs/src/Numeric.Matrix.html#isSquare Literally better

data Matrix valType = Matrix {
    values :: [[valType]]
} deriving (Show)

{-
For instance :
isASquareMatrix [[10,0, 4], [4,0], [0, 0, 0]]       Result : False
isASquareMatrix [[10,0, 4], [4, 5,0], [0, 0, 0]]    Result : True
-}
isASquareMatrix :: Foldable t => [t a] -> Bool
isASquareMatrix mat = all (== True) [col_num == line_num x | x <- [0..mat_len]]
                    where   col_num = length mat
                            line_num x = length $ (mat !! x)
                            mat_len = (length mat) - 1

{-trace mat = if isASquareMatrix mat 
                then
                    Just sum []
                else 
                    Nothing
A FINIR
-}

-- Y'a encore beaucoup de travail avant de n'être rien qu'à l'aise en Haskell