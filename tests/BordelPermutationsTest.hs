-- Symmetric group

--- import Data.List

setE = [1..4] -- for instance

identity :: (Num a) => a -> a
identity x = x 

factorial :: (Num a, Enum a) => a -> a
factorial x = product [1..x] -- the order of Sn is factorial n.

--genPermutation setGP = [[{- quelque chose -} | y <- setE] | x <- [1..(factorial . length $ setGP)]] 
-- autrement juste un petit coup de "permutations setE" grâce à Data.List