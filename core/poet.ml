type poem =
  { title: string option;
    author: string option;
    poem: string
  }

module type PoetryLibrary =
sig
  val read : unit -> poem
end

module type P =
sig
  val recite : unit -> string
end

module Make (Lib : PoetryLibrary) : P = struct
  let poem_to_string p =
    let title = match p.title with
      | None -> ""
      | Some t -> t
    in
    let author = match p.author with
      | None -> "unknown author"
      | Some a -> a
    in
    title ^ "\n" ^ p.poem ^ "\n\t" ^ author
        
  let recite () = poem_to_string (Lib.read ())
end

