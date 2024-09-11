# **Example: Vectorization in MATLAB**

This example introduces the concept of vectorization in MATLAB, which allows you to perform operations on entire arrays without needing loops. The example demonstrates how you can use a `for` loop to compute values for a function and compares it to a more efficient, vectorized approach. Both methods are shown for comparison, and a plot is included to visualize the results.

## MATLAB Code

### Using a `for` loop:
```matlab
i = 0; % Initialize an index at 0

for t = 0:0.5:50
    i = i + 1; % Increment the index with each iteration
    y(i) = cos(t); % Compute cos(t) for each value of t
end
```

### Using vectorization:
```matlab
t = 0:0.5:50; % Create an array of desired t values
y2 = cos(t) + pi; % Compute cos(t) for all values of t at once and add pi
```

### Plotting the results for comparison:
```matlab
% Plot the results of both methods
% plot(y) % Uncomment this line to plot the result from the loop
% hold on
plot(y2, 'LineStyle', '--', 'Color', 'r') % Plot the vectorized result in red dashed line

% Add labels to the axes
xlabel("t")
ylabel("y")
```

#### Comments:
- **`for` loop approach:**
  - The loop iterates over values of `t` from 0 to 50, incrementing by 0.5, calculating `cos(t)` at each step, and storing the result in the array `y`.
  
- **Vectorized approach:**
  - The vectorized version creates an array `t` and calculates `cos(t)` for all elements simultaneously, adding `pi` to each result and storing it in `y2`.
  
- **Plotting:**
  - The `plot(y2)` command visualizes the vectorized results with a dashed red line, and the optional `plot(y)` line (commented out) can be used to visualize the loop results for comparison.

### To run the code:
Copy and paste the code into MATLAB and run it. Make sure to uncomment the `plot(y)` and `hold on` lines if you want to compare the two methods visually.

### Expected Output:
A plot of `y2` (the vectorized result) will appear, showing the values of `cos(t) + pi` for `t` ranging from 0 to 50. The plot will display a red dashed line.
