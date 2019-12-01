let json = Yojson.Basic.from_file "poet_memory/poems.json"

let json_library = match json with
  | `List l -> l
  | _ -> []

let json_to_poem json =
  let open Yojson.Basic.Util in
  let title = json |> member "title" |> to_string in
  let author = json |> member "author" |> to_string in
  let poem = json |> member "poem" |> to_string in
  Poet.{
    title = Some title;
    author = Some author;
    poem = poem
  }
  (* NB: `open Poet` is irrelevent when invoking Poet.{type constructor} *)

let poems = List.map json_to_poem json_library

let library = Array.of_list poems
              
let len = Array.length(library)

let () = Random.self_init ()

let read () = library.(Random.int(len))
