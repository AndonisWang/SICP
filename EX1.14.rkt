#lang sicp
#|
Refer to this website to get an idea of Order of Growth:
https://sicp-solutions.net/post/sicp-solution-exercise-1-14/
The order of growth for steps is O(n^5) -> very inefficient
The order of growth for space is O(n) -> only related to the deepest tree.
This is because
1. After finishing the deepest tree recursion, we begin to reduce the space.
2. All the other tree branches need less space requirement.
|#