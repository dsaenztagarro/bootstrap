#!/bin/bash
set -o verbose

# Creates sandbox for global development haskell binaries

rm -rf ~/bin/hackage
mkdir -p ~/bin/hackage
cd ~/bin/hackage

cabal update
cabal sandbox init

cabal install codex
cabal install ghcmod
cabal install haddock
cabal install hasktags
cabal install hdevtools
cabal install hlint
cabal install hoogle
cabal install pointfree

ln -s ~/bin/hackage/.cabal-sandbox/bin/codex ~/bin/codex
ln -s ~/bin/hackage/.cabal-sandbox/bin/ghc-mod ~/bin/ghc-mod
ln -s ~/bin/hackage/.cabal-sandbox/bin/haddock ~/bin/haddock
ln -s ~/bin/hackage/.cabal-sandbox/bin/hasktags ~/bin/hasktags
ln -s ~/bin/hackage/.cabal-sandbox/bin/hdevtools ~/bin/hdevtools
ln -s ~/bin/hackage/.cabal-sandbox/bin/hlint ~/bin/hlint
ln -s ~/bin/hackage/.cabal-sandbox/bin/hoogle ~/bin/hoogle

hoogle data all