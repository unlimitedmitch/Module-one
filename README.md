# Worker Payment Slip Generation

## Description

This assignment involves creating a dynamic list of 400 workers and generating payment slips for each worker based on certain conditions. The task is implemented in both Python and R programming languages. Each worker has attributes such as ID, name, gender, salary, and level, which are assigned based on specific salary and gender conditions.

## Task

1. Create a list of workers dynamically, at least 400 workers.
2. Use a for loop to generate payment slips for each worker.
3. Implement the following conditional statements within the for loop:
    - If the salary is greater than $10,000 and less than $20,000, assign the employee level as A1.
    - If the salary is greater than $7,500 and less than $30,000 and the employee is female, set the employee level as A5f.
4. Add exception handling to address potential errors.

## Implementation in Python

### Process

1. **Define a `Worker` Class**:
    - Created a `Worker` class with attributes: `id`, `name`, `gender`, `salary`, and `level`.
    - Defined methods to assign levels based on the given conditions and to generate payment slips.

2. **Create Workers**:
    - Used a for loop to create 400 workers with random genders and salaries.
    - Added each worker to a list.

3. **Generate Payment Slips**:
    - Iterated through the list of workers and generated a payment slip for each one.

4. **Exception Handling**:
    - Implemented exception handling in methods to manage potential errors gracefully.

## Implementation in R

### Process

1. **Define a `Worker` Class**:
    - Used `setRefClass` to define a `Worker` class with fields: `id`, `name`, `gender`, `salary`, and `level`.
    - Defined methods to assign levels and generate payment slips based on the given conditions.

2. **Create Workers**:
    - Used a for loop to create 400 workers with random genders and salaries.
    - Added each worker to a list.

3. **Generate Payment Slips**:
    - Iterated through the list of workers and generated a payment slip for each one.

4. **Exception Handling**:
    - Implemented exception handling using `tryCatch` to manage potential errors gracefully.