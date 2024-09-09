% Structure Programming
% Here, we will go over specific examples for each of the different types of structures in programming.

%% If Statements
% If statements allow you to execute a set of statements if a logical condition is true. 
% First, we need to define operators.

% Let's try an example:
x = rand();

if x > 0.5 % You start with 'if', then the condition.
    fprintf('Yes! x is greater than 0.5\n'); % MATLAB will automatically indent, if not press tab.
end % Finally, type 'end', and MATLAB will indent backwards.

% Here, we used the 'greater than' operation, however, we could have used any other logical operation.

x = round(rand()); % This will randomly generate 0 or 1

if x >= 0 % You start with 'if', then the condition.
    error('zero value encountered'); % Press enter, and MATLAB will automatically indent, if not press tab.
end % Finally, type 'end', and MATLAB will automatically indent backwards.

% Here, I used the error function, which displays a desired error message.

%% Logical Operators
% In MATLAB, we can also utilize logical operators, which perform element-wise comparisons. 
% In MATLAB, if a logical condition is true, MATLAB will return the value 1; if it is false, it will return 0.

% For example:
% Generate two random numbers between -1 and 1
a = 2*rand()-1;
b = 2*rand()-1;

% And Statement
a > 0 & b > 0;

% Or Statement
a > 0 | b > 0;

% Not Statement
a ~= b;

%% Logical Expressions
% What happens if we have multiple logical operators in a single expression?
% How does MATLAB evaluate such expressions?

% MATLAB first evaluates any mathematical expressions, followed by relational expressions, 
% and then logical operators in priority order: ~ has the highest priority, & is second, and | is the lowest. 
% If you have two operators that are the same in a row, the left-to-right rule applies.

% Example:
a = -1; b = 2; x = 1; y = 'b';

% Take the logical expression:
% a * b > 0 & b == 2 & x > 7 | ~(y > 'd')

% Substitute values:
% -1 * 2 > 0 & 2 == 2 & 1 > 7 | ~( 'b' > 'd' )

% Evaluate mathematical expressions:
% -2 > 0 & 2 == 2 & 1 > 7 | ~( 'b' > 'd' )

% Evaluate relational expressions:
% F & T & F | ~ F

% Since ~ has the highest priority, evaluate:
% ~F --> T
% F & T & F | T

% Evaluate the & operator, left to right:
% F & T = F
% F & F = F

% Now evaluate the | operator:
% F | T = T

% The final answer is T.

%% If and elseif Statements
% Now that we have more sophisticated tools, let's consider other decision problems.
