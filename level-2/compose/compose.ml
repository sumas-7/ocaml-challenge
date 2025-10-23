let double x = x * 2;;
let square x = x * x;;

let comp f2 f1 = f2 f1;;

assert((comp double square) 3 = 18);;
