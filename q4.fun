--Yes, it is legal. The reference to x inside g works because g is a closure keeping the environment where it was defined.
-- This way, x is alwalys accessible when g is later executed.

-- When f is called with 3, a closure is created where x = 3.

-- Inside f, g is defined. When g is created, its closure captures x = 3.

-- Later, when g(2) is executed, the interpreter looks up:

-- y = 2 from g’s call

-- x = 3 from g’s closure environment and result is 5.