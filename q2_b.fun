-- Uncurried version of index function in Fun
rec index(x, xs) =
  let rec loop(ys, n) =
    if ys = nil then -1
    else if x = head(ys) then n
    else loop(tail(ys), n + 1)
  in
  loop(xs, 0);;
