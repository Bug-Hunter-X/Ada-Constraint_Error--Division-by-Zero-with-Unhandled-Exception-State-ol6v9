procedure Example is
   X : Integer := 10;
   Y : Integer := 0;
begin
   if Y = 0 then
      raise Constraint_Error;
   else
      X := X / Y; 
   end if;
exception
   when Constraint_Error =>
      Put_Line("Division by Zero. Setting Y to 1.");
      Y := 1; -- Correct: Addresses the root cause. 
      -- Handle the situation appropriately.  For instance,  if you want to continue calculation with Y set to 1:
      X := X / Y; 
      Put_Line("Calculation completed after exception handling");
end Example;