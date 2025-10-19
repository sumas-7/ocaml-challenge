let movie_ratings vote1 vote2 vote3 =
  if((0 < vote1 && vote1 < 6) && (0 < vote2 && vote2 < 6) && (0 < vote3 && vote3 < 6)) then
    match (vote1, vote2, vote3) with
      | (5, 5, 5) -> "Masterpiece"
      | (4, 5, 5) | (5, 4, 5) | (5, 5, 4) -> "Highly Recommended"
      | (4, 4, 4) | (3, 4, 4) | (4, 3, 4) | (4, 4, 3) | (3, 4, 5) | (3, 5, 4) | (3, 5, 5) -> "Recommended"
      | _ -> "Mixed Reviews"
  else
    "ERROR: vote out of range";;
