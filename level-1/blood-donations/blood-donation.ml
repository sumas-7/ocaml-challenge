type blood_group = A | B | AB | O;;

let check_groups a b = match (a, b) with
  (O, _)  -> true
  |(AB, AB) -> true
  |(A, A) -> true
  |(A, AB) -> true
  |(B, B) -> true
  |(B, AB) -> true
  |_-> false;;

assert (check_groups O AB = true);;
assert (check_groups A B = false);;
assert (check_groups AB AB = true);;