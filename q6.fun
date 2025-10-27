-- f keeps using x = 3 because it was defined when x was 3, 
-- and the Fun interpreter stores that value inside f as part of its closure, 
-- so later changes to x do not affect the function.

--Note : Functions remember the environment they were defined in, not the environment when they are called.