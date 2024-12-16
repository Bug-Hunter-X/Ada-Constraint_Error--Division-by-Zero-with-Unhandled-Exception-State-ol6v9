# Ada Constraint_Error: Division by Zero

This example demonstrates a common error in Ada exception handling related to division by zero. The code raises a `Constraint_Error` when dividing by zero. While the exception is caught, the underlying issue (the divisor `Y` remains zero) isn't addressed, leading to a repeated exception if the procedure is called again.

## How to Reproduce
1. Compile and run the Ada code in `bug.ada`. 
2. Observe the `Division by Zero` message.  The program will terminate if the exception is not handled.

## Solution
The solution in `bugSolution.ada` demonstrates the correct handling.  The solution addresses the root cause, ensuring the divisor is set to a non-zero value after catching the exception, thereby preventing the repeated error.