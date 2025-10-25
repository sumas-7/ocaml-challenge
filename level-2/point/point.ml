type point = float * float;;
type color = Red | Green | Blue;;
type colored_point = point * color;;

let translate ((px, py):point) ((dx, dy):point) =
  ((px +. dx), (py +. dy):point);;

let distance_from_origin ((x, y):point) =
  Float.sqrt((x *. x) +. (y *. y));;

let same_color ((p1, c1):colored_point) ((p2, c2):colored_point) = 
  c1 = c2;;

let recolor ((p1, c1):colored_point) (c:color) =
  ((p1, c):colored_point);;

assert (translate (2.,2.) (1.,1.) = (3.,3.));;
assert (translate (5.,8.) (3.,2.) = (8.,10.));;
assert (same_color ((2.,2.),Red) ((2.,2.),Blue) = false);;
assert (same_color ((2.,2.),Red) ((2.,2.),Red) = true);;
assert (same_color ((2.,2.),Green) ((2.,2.),Green) = true);;
assert (recolor ((2.,2.),Red) Green = ((2.,2.),Green));;
assert (recolor ((7.,5.),Blue) Green = ((7.,5.),Green));;
