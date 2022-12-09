https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
module AST where

import Interface

data Datum
    =Number Integer
    |Boolean Bool
    |Symbol String
    |Cons Datum Datum
    |Nil
    deriving (Show)


instance SchemeData Datum where
    symbol= Symbol
    number=Number
    boolean=Boolean
    cons=Cons
    nil=Nil
    proper []=Nil
    proper (d:ds)= Cons d (proper ds)

    improper [] d=d
    improper (d':ds) d= Cons d' (improper ds d)



    

