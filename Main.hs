https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
module Main where

import Interface
import Parser ( parseExprs )
import AST
import System.Environment (getArgs)



run :: Datum -> Maybe String
run = undefined

main :: IO ()
main = do files <- getArgs
          contents <- concat <$> mapM readFile files
          case parseExprs True contents of
              Left err -> putStrLn ("parse error: " ++ show err)
              Right ds -> mapM_ (\d -> case run d of
                                           Nothing -> putStrLn "error"
                                           Just ress -> putStrLn ress) ds