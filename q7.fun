TOO MANY OR TOO FEW ARGUMENTS 
   -- In the case where arguments are too few - Evaluation fails because the interpreter cannot link all parameters to values
   -- In the case where arguments are too many - Interpreter raises an error because Fun does not suport currying or partial application.
      Note : Currying is a technique in functional programming where a function is transformed into a sequence of functions, each taking a single argument.

WHY THE INTERPRETER ENFORCES THIS?


WHEN A FUNCTION REPEATS PARAMETER NAMES

Example : val f(b, y, b) = b + y


In this case, the repeated argument overrides the first argument.
In our case if at first b=2, then b=7, the second b value overwrites the first b value. 
Result will be b = 7. 

SHOULD Fun ALLOW THIS BEHAVIOR?

No. It is error bound and results to one keeping track of multiple variables to know which one is doing what. 
If no attention is paid, one variable can change another unbeknownst to the programmer leading to unpredictable code.
If Fun is to be used as a proper language definition, it should disallow repeated parameter names.