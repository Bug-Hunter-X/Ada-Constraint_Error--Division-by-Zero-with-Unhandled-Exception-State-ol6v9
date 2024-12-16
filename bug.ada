procedure Example is
   X : Integer := 10;
   Y : Integer := 0;
begin
   if Y = 0 then
      raise Constraint_Error;
   else
      X := X / Y; --Division by zero if Y remains 0
   end if;
exception
   when Constraint_Error =>
      Put_Line("Division by Zero");
end Example;