let parrot_trouble talking time = match (talking, time) with
  | (_, -1) -> None
  | (_, 24) -> None
  | (false, _) -> Some false
  | (true, _) -> Some ((0 < time && time < 7) || (20 < time && time < 23));;