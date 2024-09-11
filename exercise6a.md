# Structure Programming

Here, we will go over specific examples for each type of structure programming. 

## If Statements

If statements allow you to execute a set of statements if a logical condition is true. First, we need to define operators:

<p align="center">
  <img src="operators.png" alt="If Statement Example" width="500"/>
</p>

Let's try an example:

```matlab
x = rand()

if x > 0.5 % You start with if, then condition.
    fprintf('Yes! x is greater than 0.5') %Press enter, and MATLAB will automatically indent, if not press tab.
end % Finally, type in end, and MATLAB will automatically indent backward.
```
Here, we chose the greater than operation. However, we could've used any other logical operation.

```matlab

x = round(rand()) %This will randomly generate 0 or 1

if x >= 0 %You start with if, then condition.
    error('zero value encountered') %Press enter, and MATLAB will automatically indent, if not press tab.
end % Finally, type in end, and MATLAB will automatically indent backward.

% Here, I used the error function, which displays your desired
% error message.
```

## Logical Operators

We can also utilize logical operators in MATLAB, which perform element-wise comparisons. In MATLAB, if a logical condition is true, MATLAB will return the value 1, if it is false it will return the value 0.

<p align="center">
  <img src="logical_operators.png" alt="If Statement Example" width="800"/>
</p>

For example:

```matlab

% Generate two random numbers between -1 and 1

a = 2*rand()-1
b = 2*rand()-1

% And Statement

a > 0 & b > 0

% Or Statement

a > 0 | b > 0

% Not Statement 

a ~= b
```

### Logical Expressions

What would happen if we had multiple logical operators in a single expression? How does MATLAB evaluate such an expression?

1. The first thing MATLAB does is evaluate any mathematical expression.
2. Next, MATLAB evaluates all relational expressions/operations.
3. Logical operators are then evaluated in priority order, where `~` has the highest priority, `&` second, and `|` has the lowest priority. (`~` > `&` > `|`).
4. The left-to-right rule applies if two operators are the same in a row.

Let's take the following logical expression and solve it step by step:

```matlab
a * b > 0 & b == 2 & x > 7 | ~(y > 'd')
```
where `a = -1`, `b = 2`, `x = 1` and `y = b`.

For convenience, substitute:

```matlab
-1 * 2 > 0 & 2 == 2 & 1 > 7 | ~( 'b' > 'd' )
```

Now that we have substituted all the numbers and values, we evaluate all mathematical expressions:

```matlab
-2 > 0 & 2 == 2 & 1 > 7 | ~( 'b' > 'd')
```

Now evaluate all relational expressions:

```matlab
-2 > 0
2 == 2
1 > 7
'b' > 'd'
```
This means that we have :

```matlab
F & T & F | ~ F
```

From earlier, `~` has the highest priority. Remember `~` returns the opposite of what you have, therefore `~F --> T`:

```matlab
F & T & F | T
```

Next, evaluate the & operator. Since we have two of them, start from left and proceed right:

Take `F & T & F` and split it into two segments: 

```matlab
F & T = F
```

Now you have

```matlab
F & F | T
F | T
```

The final answer is `T`. 

### If and elseif Statements

Now that we have more sophisticated tool, let's consider other decision problems. Let's consider the `if...else` structure. 

```matlab
a = rand() % Define an arbitrary randomly generated variable between 0 and 1.

if a > 0.5
    fprintf('a is greater than 0.5')
else
    fprintf('a if less than 0.5')
end
```

The other type of decision problem is the `if...elseif` structure. This differs from the if..else statement, where you can have more than two options for a particular problem. For example:

```matlab
a = randi([0, 3]) % Again, we define an arbitrary randomly generated integer between 0 and 3.

if a == 0
    fprintf('a is equal to 0')
elseif a == 1
    fprintf('a is equal to 1')
elseif a == 2
    fprintf('a is equal to 2')
else
    fprintf('a is equal to 3')
end
```
### Switch Structure

In essence, they are similar in spirit to the `if...elseif`. The difference is that instead of testing individual conditions, the branching is based on the value of a single test expression. Let us consider the following example:

```matlab
number = randi([0, 3]) % We define an arbitrary randomly generated integer between 0 and 3.

switch number % Here, we initialize our switch structure. We want to switch the variable a to words instead of a number
    case 0
        disp('Zero!')
    case 1
        disp('One!')
    case 2
        disp('Two!')
    otherwise
        disp('Three!')
end
```
