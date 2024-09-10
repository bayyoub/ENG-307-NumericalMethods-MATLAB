### **Example Function: Prompting for User Input**

This example demonstrates a MATLAB function, `my_input`, that takes inputs directly from the user. It prompts the user to input values for `x`, `m`, and `b`, then calculates the result using the linear equation `y = m*x + b`. This function provides a useful example of how to interact with the user and handle inputs in MATLAB.

## MATLAB Function
```matlab
function [y] = my_input

x = input('Input value of x: ');   % Prompting the user to input a value for x
m = input('Input value of m: ');   % Prompting the user to input a value for m
b = input('Input value of b: ');   % Prompting the user to input a value for b

% Defining random variables
m = 1;   % Overriding the user input for m with a fixed value of 1
b = 2;   % Overriding the user input for b with a fixed value of 2

% Passing the first function into the subfunction
% y = m*x + b;

disp('y = ')               % Display the output label
disp(m*x + b)              % Calculate and display the value of y (m*x + b)

end
```

#### Comments:
- `x = input('Input value of x: ')`: Prompts the user to input a value for `x`.
- `m = input('Input value of m: ')`: Prompts the user to input a value for `m`.
- `b = input('Input value of b: ')`: Prompts the user to input a value for `b`.
- `m = 1;` and `b = 2;`: Assigns fixed values to `m` and `b`, overriding user inputs.
- `disp('y = ')` and `disp(m*x + b)`: Displays the calculated value of `y = m*x + b`.

### To run the command, do the following:
Save the function as `my_input.m`, then in the command window, run the function by typing:
```matlab
my_input
```

### Example Interaction:
```
Input value of x: 5
Input value of m: 3
Input value of b: 4

y = 
7
```
