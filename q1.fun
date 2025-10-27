rec foldr(f, z, xs) =
  if xs = nil then z
  else f(head(xs), foldr(f, z, tail(xs)));;


rec foldl(f, a, xs) =
  if xs = nil then a
  else foldl(f, f(a, head(xs)), tail(xs));;


rec map(f, xs) =
  foldr(lambda (x, acc) f(x) : acc, nil, xs);;