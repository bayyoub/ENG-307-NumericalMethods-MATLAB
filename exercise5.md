# **Example Function: Using Subfunctions**

This example demonstrates a MATLAB function, `my_subfunction`, which calculates the result of a linear equation using a subfunction. The primary function calls the subfunction, `subfunction_2`, to compute the equation `y = m*x + b`. This exercise introduces students to working with multiple functions within the same file and how one function can pass variables to another.

## MATLAB Function
```matlab
% Primary function
function [y] = my_subfunction(x)

    % Defining random variables
    m = 1;   % Fixed value for the slope (m)
    b = 2;   % Fixed value for the intercept (b)

    % Passing the first function into the subfunction
    y = subfunction_2(m, b, x);   % Call the subfunction to compute y

end

% Subfunction
function [y] = subfunction_2(m, b, x)

    % Formula for subfunction
    y = m*x + b;   % Compute the linear equation y = m*x + b

end
```

#### Comments:
- **Primary function:**
  - `function [y] = my_subfunction(x)`: Defines the primary function `my_subfunction` that takes `x` as input.
  - `m = 1;` and `b = 2;`: Assigns fixed values to the slope `m` and intercept `b`.
  - `y = subfunction_2(m, b, x);`: Calls the subfunction `subfunction_2` and passes `m`, `b`, and `x` to it for calculation.
  
- **Subfunction:**
  - `function [y] = subfunction_2(m, b, x)`: Defines the subfunction `subfunction_2` that computes the value of `y = m*x + b`.

### To run the command, do the following:
Save the entire code as `my_subfunction.m`, then in the command window, call the primary function using:
```matlab
result = my_subfunction(5)
```

### Expected Output:
```
result =

    7
```
