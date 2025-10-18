let incr_opt a = match a with
  | None -> None
  | Some a -> Some (a + 1);;

incr_opt(Some 4);;
incr_opt(Some 45);;
incr_opt None;;