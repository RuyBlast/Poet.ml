# Poet.ml

## Introduction
Poet.ml is a toy project to illustrate how to implement hexagonal architecture (clean/onion architecture) in Ocaml, making use of a functor.
This is a command line tool with a minimalist interactive prompt that recites poems. Interface is in French, it should not prevent you to understand the code base, but if it bothers you, please open an issue.

## Build
To build this project, you need an ocaml compiler (tested with version 4.07.1), dune (tested with version 1.11.4) and yojson (tested with 1.7.0).

To install dune and yojson :
`opam install dune yojson`
(install opam previously with your package manager or from source if needed)

To build the project, you just have to run:
`dune build ui/console.exe`
And to run it:
`dune exec ui/console.exe`