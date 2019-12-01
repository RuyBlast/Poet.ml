(** Poet reader over poetry library types *)

(** Type of a poem*)
type poem =
  { title: string option;
    author: string option;
    poem: string
  }

(** Signature of a library containing poems *)
module type PoetryLibrary =
sig
  val read : unit -> poem
end

(** Output signature of the Functor {!Poet.Make}*)
module type P =
sig
  val recite : unit -> string
end

(** Functor building a poet able to recite poems *)
module Make (Lib : PoetryLibrary) : P
