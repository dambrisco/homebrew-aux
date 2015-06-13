homebrew-aux
==============

This repository contains Homebrew formulae for useful packages that are either
pending acceptance into Homebrew/homebrew or which I've decided not to PR.

How to install
--------------

You can install any formula here by typing:

```sh
brew install dambrisco/aux/<formula>
```

Or you can manually tap this repository first:

```sh
brew tap dambrisco/aux
brew install <formula>
```

Be aware that Homebrew will prefer any canonical formulae to those contained
here. If this does occur, please file an issue - any case where this occurs
indicates that a recipe should be deprecated or renamed.
