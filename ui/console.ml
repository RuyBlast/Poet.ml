module Cyrano = Poet.Make (Poet_memory.Library)

let intro =
  print_string "Ami de la poésie bonjour \\a/";
  print_newline ();
  print_string "Souhaites-tu que je récite un poème ?";
  print_newline ()

let apologize () =
  print_string "Un jour, la poésie viendra à vous. Gardez courage et joie !";
  print_newline ();
  exit 0

let rec listen_request () =
  let req = read_line () in
  match req with
  | "oui" | "yes" | "si" -> recite ()
  | "non" | "no" -> apologize ()
  | _ -> do_not_understand ()
and recite () =
  print_newline ();
  print_string (Cyrano.recite ());
  print_newline ();
  print_newline ();
  print_string "Souhaites-tu que je récite un autre poème ?";
  print_newline ();
  listen_request ()
and do_not_understand () =
  print_string "Veuillez-m'excuser, je suis tête en l'air et ce que vous \
                m'avez dit m'a échappé. Sauriez-vous m'éclaircir quant à votre \
                demande ?";
  print_newline ();
  listen_request ()

let () = intro; listen_request ()
