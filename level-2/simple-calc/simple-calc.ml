type operation =
  | Add of int * int
  | Sub of int * int 
  | Mul of int * int 
  | Div of int * int;;

let eval (op:operation) = match op with
  | (Add (x, y)) -> Some (x + y)
  | (Sub (x, y)) -> Some (x - y)
  | (Mul (x, y)) -> Some (x * y)
  | (Div (x, y)) ->
      if y <> 0 then
        Some (x / y)
      else None;;

let make_operation (op:char) x y = match op with
  | ('+') -> Add (x, y)
  | ('-') -> Sub (x, y)
  | ('*') -> Mul (x, y)
  | ('/') -> if y <> 0 then
        Div (x, y)
      else failwith "divisione per zero"
  | _ -> invalid_arg "operatore non riconosciuto";;

assert (eval (Add (2,2)) = Some 4);;
assert (eval (Add (42,7)) = Some 49);;
assert (eval (Sub (23,6)) = Some 17);;
assert (eval (Mul (3,4)) = Some 12);;
assert (eval (Div (3,0)) = None);;
assert (make_operation '+' 2 4 = Add (2, 4));;
assert (make_operation '-' 75 44 = Sub (75, 44));;
