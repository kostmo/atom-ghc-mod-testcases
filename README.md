Demonstration
=============

## How to build and run project

    cd stack-multi-package
    stack build
    stack exec demonstrate-goto-exe

## How to open both packages of the project simultaneously in atom

    cd stack-multi-package
    stack exec atom .

====
Original GitHub thread:
https://github.com/atom-haskell/haskell-ghc-mod/pull/166/files/c73d325c1bbe81e0c2b4dc5127b506324fad3550#r71079881

====

Steps to hack on `haskell-ghc-mod`:

* Replace the existing package directory underneath `~/.atom/packages` with a symlink:

    haskell-ghc-mod -> ~/github/haskell-ghc-mod
