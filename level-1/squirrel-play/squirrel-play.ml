type season = Spring | Summer | Autumn | Winter;;

let squirrel_play temp season = match (temp, season) with
  | (_, Summer) -> 15 <= temp && temp <= 35
  | _ -> 15 <= temp && temp <= 30;;

assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;