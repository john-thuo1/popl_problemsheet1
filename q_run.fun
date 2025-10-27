-- File to check legality of questions 4 and 5.
let val f(x) =
  let val g(y) = x + y in
  let val h(x) = g(x + 3) in
  h(2 * x)
in
f(7) -- Outputs 24
;;
