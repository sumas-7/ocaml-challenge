let n_min = 1;;
let n_max = 5;;

let in_range x a b = a < x && x < b;;

let guess5 n =
  if in_range n n_min n_max then
    let r = Random.int (n_max + 1) in
    (n = r, r)
  else
    (false, -1);;

guess5 3;;