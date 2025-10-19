let is_even x = (x mod 2) = 0;;

let win a b = 
  if (1 <= a && a <= 5) then (*a è corretto*)
    if (1 <= b && b <= 5) (*anche b corretto*)
      then if is_even (a + b) then 1 else -1
    else (*solo a è corretto*)
      1
  else if (1 <= b && b <= 5) then (*solo b è corretto*)
    -1
  else (*nessun numero è corretto*)
    0;;
