-- Yes, it is legal.

-- Call f(7) ⇒ so outer x = 7.

-- Define g(y) = 7 + y (closure captures x = 7)

-- Define h(x) = g(x + 3) (inner x shadows outer one)

-- Compute h(2 * 7) ⇒ h(14)

-- h(14) = g(14 + 3) = g(17)

-- g(17) = 7 + 17 = 24