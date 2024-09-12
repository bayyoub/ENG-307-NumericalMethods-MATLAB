<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>


### **Error Estimation in Numerical Methods**

In this example, we demonstrate how to calculate different types of errors: True Error, Absolute Error, True Fractional Relative Error, and True Percent Relative Error. We will use the Taylor series expansion for $$e^{x}$$. This can also be expressed through a Maclaurin series as such: 

$$
e^{x} = \sum_{n=0}^{\infty} \frac{x^n}{n!} = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \frac{x^4}{4!} + \dots
$$

Here, we will compute the errors for  $$e^{0.5}$$ using a 6-term Maclaurin series expansion.

## MATLAB Code

```matlab
% Set the output format to show more significant figures
format long

% Define x and the true value of exp(x)
x = 0.5;
expt = exp(x);  % True value of e^x

% Taylor series approximation for e^x using n terms
n = 6;  % Specify the number of terms for the expansion
nx = 0:n-1;  % Create an array with the number of terms from 0 to n-1

% Compute the Taylor series approximation for e^x
expx = sum(x.^nx ./ factorial(nx));  % Approximation of e^x using Taylor series
```

### **1. True Error**
True error is the difference between the true value and the approximation.

$$
E_{t} = \text{True Value} - \text{Approximation}
$$

```matlab
% True Error
E_t = expt - expx;  % True error: True value - Approximation
disp('True Error:');
disp(E_t);
```

### **2. Absolute Error**
Absolute error is the absolute value of the true error.

$$
|E_{t}| = |\text{True Value} - \text{Approximation}|
$$

```matlab
% Absolute Error
E_t_abs = abs(E_t);  % Absolute error: Absolute difference between true and approx.
disp('Absolute Error:');
disp(E_t_abs);
```

### **3. True Fractional Relative Error**
True fractional relative error is the ratio of the true error to the true value.

$$
\frac{E_{t}}{\text{True Value}} = \frac{\text{True Value} - \text{Approximation}}{\text{True Value}}
$$

```matlab
% True Fractional Relative Error
E_t_frac = E_t / expt;  % Fractional relative error: (True value - Approx) / True value
disp('True Fractional Relative Error:');
disp(E_t_frac);
```

### **4. True Percent Relative Error**
True percent relative error is the fractional error expressed as a percentage.

$$
\epsilon = \frac{\text{True Value} - \text{Approximation}}{\text{True Value}} \times 100 \\%
$$

%

```matlab
% True Percent Relative Error
E_t_p = abs(E_t_frac) * 100;  % Percent relative error: Fractional error * 100%
disp('True Percent Relative Error:');
disp(E_t_p);
```

### **Expected Output:**
If you run the script in MATLAB with `x = 0.5` and `n = 6`, the following output will be displayed:

```
True Error:
   2.335403346154230e-05
Absolute Error:
   2.335403346154230e-05
True Fractional Relative Error:
   1.416493732238017e-05
True Percent Relative Error:
   0.001416493732238
```


