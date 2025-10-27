-- Abstract Syntax Tree(ATS) - is the internal tree-shaped representation of a Fun program used by the interpreter to understand and evaluate code.
--   E.g  Apply
--        /    \
--        +     [x, 3]



--1. 3 - Number 3

--2. "x" - Variable x

--3. x+3 - Variable x, Number 3 - Apply (Variable "+") [Variable "x", Number 3]

--4. (x+3)*4 - Variable x, Number 3, Number 4 - Apply (Variable "*") [ Apply (Variable "+") [Variable "x", Number 3], Number 4 ]

--5. let val x = 2 in x+3 - Let (Val "x" (Number 2))(Apply (Variable "+") [Variable "x", Number 3])

--6. let val f(x) = x+3 in f(2) - Let (Val "f" (Lambda ["x"](Apply (Variable "+") [Variable "x", Number 3])))(Apply (Variable "f") [Number 2])

--7. f(g(x)) - First evaluate g(x), then apply f to the result -> Apply (Variable "f")[ Apply (Variable "g") [Variable "x"] ]

--8. f(g)(x) - Here f(g) is first, producing a function; then applied to x: Apply(Apply (Variable "f") [Variable "g"])[Variable "x"]


Resources : FunSyntax.hs and gpt5-mini.

