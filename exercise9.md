<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>

# **Error Estimation for Iterative Methods**

In the previous example, we calculated errors assuming we knew the true value. However, in most cases, we do not know the true value. Instead, we use an error criterion to estimate the accuracy of our result. Specifically, we can define the error as:

$$
e_a < | e_s |
$$

Where $e_s$ is the stopping criterion, given by:

$$
e_s = 0.5 \times 10^{2-n} \%
$$

In this example, we aim to approximate $e^{0.5}$ using the stopping criterion $e_s$, which ensures the result is accurate up to $n$ significant figures. We will use a `while` loop because we do not know in advance how many terms are required to meet the stopping criterion. For demonstration purposes, we will also calculate the true error per iteration using MATLAB's built-in `exp(x)` function to get the true value.

This method will follow **Example 4.1** from the book.

### **1. Initializing the Loop**

```matlab
n = 3; % Number of significant figures we want
e_s = 0.5 * 10^(2-n); % Stopping criterion
fprintf('Our error has to be less than %0.2f %s', e_s, '%');

i = 1; % Iteration index, starts at 1
e_x = 1; % Initial value for the series expansion, e^x approximation
e_t = 100; % Initializing the true error to an arbitrary value (100%)
```

- **`n = 3`**: Specifies the number of significant figures we want in the result.
- **`e_s = 0.5 * 10^(2-n)`**: Calculates the stopping criterion based on the number of significant figures.
- **`i = 1`**: The iteration index, starting at 1 for the first term.
- **`e_x = 1`**: The initial value for the Taylor series expansion (since the first term in the expansion is 1).
- **`e_t = 100`**: The initial true error, set arbitrarily high to enter the loop.

### **2. The While Loop**

```matlab
while e_t > e_s
    e_x = e_x + (0.5^i)/factorial(i); % Add the next term in the expansion
    e_t = abs((exp(0.5) - e_x)/exp(0.5)) * 100; % Calculate True Percent Relative Error
    i = i + 1; % Increment the iteration index
end

fprintf('Convergence achieved at i = %0.0f', i);
```

- **`while e_t > e_s`**: The loop continues until the error \( e_t \) is less than the stopping criterion \( e_s \).
- **`e_x = e_x + (0.5^i)/factorial(i)`**: Adds the next term in the Taylor series expansion of \( e^{0.5} \).
- **`e_t = abs((exp(0.5) - e_x)/exp(0.5)) * 100`**: Calculates the true percent relative error for the current approximation.
- **`i = i + 1`**: Moves to the next term in the series by incrementing the iteration index.

### **Output**

The loop will stop when the error is smaller than the stopping criterion $e_s$, and the number of iterations required for convergence will be printed.

### **Expected Output:**

After running the code, you should see an output similar to this:

```
Our error has to be less than 0.50 %
Convergence achieved at i = 5
```

