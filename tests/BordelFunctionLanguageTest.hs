module BordelFunctionLanguageTest where 

-- A function is a binary relation over two sets that associates to every element of the first set exactly one element
-- of the second set.

data Function expr a b = Function {
    expression :: expr, -- maybe a String ou le type de (+), (*)..
    domain :: [a], 
    codomain :: [b]
} deriving (Show)   

--getFunctionField :: Show a => t -> (t -> a) -> String
--getFunctionField (Function ) = show $ field fct -- bien faire gaffe que field existe hein
-- for instance : 
-- showFunctionField Function {expression = 55, domain = [4, 65], codomain = [55]} expression

getFunctionExpression :: Function expr a b -> expr
getFunctionExpression (Function expr _ _) = expr

getFunctionDomain :: Function expr a b -> [a]
getFunctionDomain (Function _ dom _) = dom

getFunctionCodomain :: Function expr a b -> [b]
getFunctionCodomain (Function _ _ codom) = codom