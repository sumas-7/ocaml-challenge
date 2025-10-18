let mux2_1 a b s0 = if s0 then a else b;;
    
let mux2_2 a b s0 = (s0 && a) || (b && not s0);;
  
let mux2_3 a b s0 = match (s0 a b) with
    (true,_,_) -> a 
  | _ -> b;;

let mux1 s0 s1 a b c d = mux2_1(mux2_1(b c s0), mux2_1(a b s0), s1)