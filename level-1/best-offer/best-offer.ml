(* let best_offer offer1 offer2 offer3 = match (offer1, offer2, offer3) with
  | (None, None, None) -> None
  | _ ->  if(offer1 > offer2 && offer1 > offer3) then
            offer1
          else if(offer2 > offer3) then 
            offer2 
          else 
            offer3;; *)

let best_offer offer1 offer2 offer3 = match (offer1, offer2, offer3) with
  | (None, None, None) -> None
  | _ ->  max offer1 (max offer2 offer3);;

assert(best_offer (Some 100) (Some 200) (Some 150) = Some 200);;
assert(best_offer (Some 100) None (Some 150) = Some 150);;
assert(best_offer None None None = None);;
assert(best_offer None (Some 300) None = Some 300);;