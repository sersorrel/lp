#!/bin/sh

# fd . src | nix run nixpkgs#entr -- -rdz cargo run --release
# the above waits until lp exits before starting to compile the code again; using -s seems to make it restart immediately
# this causes Strange Effects if lp doesn't exit quickly enough =^.^= but that's ok!
fd . src | nix run nixpkgs#entr -- -rdzs "cargo run"
# as of 2022-11-07, passing --release makes the build take an extra ~1s, which sucks a bit
# hopefully runtime performance is good enough in debug mode to not worry
