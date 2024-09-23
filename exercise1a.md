<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>

# **Writing Vectors and Matrices in MATLAB**

This segment introduces basic MATLAB syntax for creating vectors and matrices. It covers arrays, row and column vectors, and matrices, along with accessing specific elements. It also demonstrates how to transpose vectors and matrices and explains the use of the colon operator, `linspace`, and `logspace`.

### **1. Writing Vectors and Matrices**

To write row and column vectors in MATLAB:

```matlab
>> v = [1 2 3]    % Row vector
>> w = [3; 4; 5]  % Column vector
```

In the MATLAB Command Window, the results will look like this:

```matlab
v =

     1     2     3


w =

     3
     4
     5
```

Similarly, we can write matrices in MATLAB as follows:

```matlab
>> A = [1 2 3; 4 5 6; 7 8 9]   % 3x3 matrix
```

In the Command Window, the matrix looks like this:

```matlab
A =

     1     2     3
     4     5     6
     7     8     9
```

### **2. Transposing Vectors and Matrices**

To transpose a vector or matrix, simply add the transpose operator (`'`):

```matlab
>> v = [1 2 3]'    % Transposed row vector

v =

     1
     2
     3

>> w = [3; 4; 5]'  % Transposed column vector

w =

     3     4     5

>> A = [1 2 3; 4 5 6; 7 8 9]'  % Transposed matrix

A =

     1     4     7
     2     5     8
     3     6     9
```

### **3. Accessing Elements in Vectors and Matrices**

To access specific elements in an array, use parentheses `()` to specify the index. For matrices, specify the row and column number.

```matlab
>> v = [1 2 3];
>> w = [3; 4; 5];
>> A = [1 2 3; 4 5 6; 7 8 9];
```

Now, let's access the first element of `v`, the second element of `w`, and the element in the second row and third column of `A`:

```matlab
>> v(1)    % First element of vector v

ans =

     1

>> w(2)    % Second element of vector w

ans =

     4

>> A(2,3)  % Element in the second row, third column of matrix A

ans =

     6
```

For matrices, the format is:

$$
\text{A(row, column)}
$$

### **4. Colon Operator, `linspace`, and `logspace`**

#### **a. Colon Operator**

The colon operator `:` is used to create arrays with a specified start, step, and end:

$$
\text{x = start : step : end}
$$

For example, to create an array from 1 to 10 with a step size of 0.5:

```matlab
x = 1:0.5:10
```

This will produce:

```matlab
x =

  Columns 1 through 14

    1.0000    1.5000    2.0000    2.5000    3.0000    3.5000    4.0000    4.5000    5.0000    5.5000    6.0000    6.5000    7.0000    7.5000

  Columns 15 through 19

    8.0000    8.5000    9.0000    9.5000   10.0000
```

#### **b. `linspace`**

`linspace` creates an array by specifying the start and end values and the number of elements, rather than the step size.

$$
\text{x = linspace(start, end, number of elements)}
$$

For example, to create an array between 1 and 10 with 20 elements:

```matlab
x = linspace(1, 10, 20)
```

This will return:

```matlab
x =

  Columns 1 through 14

    1.0000    1.4737    1.9474    2.4211    2.8947    3.3684    3.8421    4.3158    4.7895    5.2632    5.7368    6.2105    6.6842    7.1579

  Columns 15 through 20

    7.6316    8.1053    8.5789    9.0526    9.5263   10.0000
```

#### **c. `logspace`**

`logspace` creates logarithmically spaced vectors between powers of 10.

$$
\text{x = logspace(start power, end power, number of elements)}
$$

For example, to create an array with 4 elements between $10^{-1}$ and $10^2$:

```matlab
x = logspace(-1, 2, 4)
```

This will return:

```matlab
x =

    0.1000    1.0000   10.0000  100.0000
```
