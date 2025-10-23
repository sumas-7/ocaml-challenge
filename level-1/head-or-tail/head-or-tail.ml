let is_even x = (x mod 2) = 0;;

Random.self_init();;

let hot () = if is_even (Random.int(256000)) then "head" else "tail";;