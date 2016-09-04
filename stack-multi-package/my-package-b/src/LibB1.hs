module LibB1 where

import           LibA1
import qualified LibA2
import qualified LibB2 as MyLibB2
import qualified LibB3


myConstant1 :: String
myConstant1 = "quux"


someFunc :: IO ()
someFunc = putStrLn $ unwords [
    myConstant1         -- defined local to this module.
                        -- "go-to-declaration" works for `haskell-ghc-mod`
                        -- both with the symbol highlighted by the user (e.g.
                        -- via double-clicking the symbol) and by placing the
                        -- cursor within the symbol without highlighting.
                        -- Only works for `ide-haskell-hasktags` by placing
                        -- the cursor *without* highlighting the symbol.

  , LibA2.myConstant2   -- defined in a different package.
                        -- "go-to-declaration" does not work for either
                        -- `haskell-ghc-mod` or `ide-haskell-hasktags`
                        -- under any circumstance.

  , myConstant3         -- defined in a different package.
                        -- "go-to-declaration" only works for
                        -- `ide-haskell-hasktags`, and only when the cursor
                        -- is placed *without* highlighting the symbol.

  , MyLibB2.myConstant4 -- defined in a different module local to this package.
                        -- "go-to-declaration" works for `haskell-ghc-mod`
                        -- when the un-qualified symbol is manually highlighted
                        -- (e.g. by double-clicking on "myConstant4"), but not
                        -- when the cursor is simply placed on the symbol with
                        -- no highlighting.
                        -- `ide-haskell-hasktags` does not work at all.

  , LibB3.myConstant5   -- defined in a different module local to this package.
                        -- "go-to-declaration" works for `haskell-ghc-mod`
                        -- both when highlighting and placing the cursor.
                        -- `haskell-ghc-mod` does not work under any
                        -- circumstance.
  ]
