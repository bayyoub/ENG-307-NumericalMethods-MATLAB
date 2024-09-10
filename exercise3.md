### **Example Function: Calculating Mean and Standard Deviation**

This example demonstrates a MATLAB function, `my_fxn_2`, which takes a data set as input and returns **two outputs**: the mean and the standard deviation. Unlike the previous example that had one output, this function provides multiple results, helping students understand how to define and work with functions that return more than one value.

## MATLAB Function
```matlab
function [mean, stdev] = my_fxn_2(x)
    n = length(x);              % Calculate the length of the input data
    mean = sum(x)/n;            % Calculate the mean (average) of the data
    stdev = sqrt(sum((x-mean).^2/(n-1))); % Calculate the standard deviation
end
```

#### Comments:
- `function [mean, stdev] = my_fxn_2(x)`: Defines the function `my_fxn_2` that takes input `x` (a dataset) and returns two outputs: `mean` and `stdev` (standard deviation).
- `n = length(x)`: Determines the number of data points in the input `x`.
- `mean = sum(x)/n`: Calculates the average (mean) of the data points.
- `stdev = sqrt(sum((x-mean).^2/(n-1)))`: Computes the standard deviation of the data points.
- `end`: Marks the end of the function.

### To run the command, do the following:
Save the function as `my_fxn_2.m`, then in the command window, call the function using:
```matlab
[mean_value, stdev_value] = my_fxn_2([1, 2, 3, 4, 5])
```

### Expected Output:
```
mean_value =

    3

stdev_value =

    1.5811
```

---

