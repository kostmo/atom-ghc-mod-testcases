module Main where

import           LibB1

main :: IO ()
main = someFunc  -- "go-to-declaration" works both in `haskell-ghc-mod` and `ide-haskell-hasktags`.
                 -- Compare to the `myConstant6` test case in the "LibB1" module.
