The provided code implements **gradient descent** to perform **linear regression**. Here’s a breakdown of the key concepts:

### 1. Linear Regression
Linear regression aims to find the linear relationship between a dependent variable \( y \) and an independent variable \( x \). The relationship is modeled using a linear equation:
\[ y = mx + b \]
where \( m \) is the slope and \( b \) is the y-intercept.

### 2. Cost Function
The cost function measures how well the model's predictions match the actual data. For linear regression, the cost function is typically the **Mean Squared Error (MSE)**:
\[ \text{Cost} = \frac{1}{n} \sum_{i=1}^{n} (y_i - \hat{y}_i)^2 \]
where \( y_i \) are the actual values, \( \hat{y}_i \) are the predicted values, and \( n \) is the number of data points.

### 3. Gradient Descent
Gradient descent is an optimization algorithm used to minimize the cost function by iteratively updating the parameters (in this case, \( m \) and \( b \)). The updates are based on the gradients (derivatives) of the cost function with respect to the parameters.

#### Steps in Gradient Descent:
1. **Initialization**:
   Start with initial guesses for the parameters \( m \) and \( b \) (both set to 0 in this case).

2. **Predicted Values**:
   Calculate the predicted values using the current parameters:
   \[ \hat{y} = m \cdot x + b \]

3. **Cost Calculation**:
   Compute the cost function (MSE) to assess how well the current model fits the data.

4. **Gradients Calculation**:
   Calculate the gradients of the cost function with respect to \( m \) and \( b \):
   \[ \text{md} = -\frac{2}{n} \sum_{i=1}^{n} x_i (y_i - \hat{y}_i) \]
   \[ \text{bd} = -\frac{2}{n} \sum_{i=1}^{n} (y_i - \hat{y}_i) \]

5. **Parameters Update**:
   Update the parameters using the gradients and the learning rate:
   \[ m = m - \text{learning\_rate} \times \text{md} \]
   \[ b = b - \text{learning\_rate} \times \text{bd} \]

6. **Iteration**:
   Repeat steps 2 to 5 for a specified number of iterations or until the cost converges to a minimum.

### Code Explanation
- **Initialization**: 
  ```python
  m_curr = b_curr = 0
  iterations = 10000
  n = len(x)
  learning_rate = 0.08
  ```

- **Gradient Descent Loop**:
  ```python
  for i in range(iterations):
      y_predicted = m_curr * x + b_curr
      cost = (1/n) * sum([val**2 for val in (y-y_predicted)])
      md = -(2/n) * sum(x * (y - y_predicted))
      bd = -(2/n) * sum(y - y_predicted)
      m_curr = m_curr - learning_rate * md
      b_curr = b_curr - learning_rate * bd
      if i % 100 == 0:  # Print every 100 iterations for brevity
          print("m {}, b {}, cost {} iteration {}".format(m_curr, b_curr, cost, i))
  ```

- **Execution**:
  ```python
  x = np.array([1, 2, 3, 4, 5])
  y = np.array([5, 7, 9, 11, 13])

  gradient_descent(x, y)
  ```

This iterative process continues until the parameters converge to values that minimize the cost function, resulting in the best-fit line for the data.
