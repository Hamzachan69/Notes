> **Video:** [Python Tutorial for Beginners 3: Integers and Floats - Working with Numeric Data](https://www.youtube.com/watch?v=khKv-8q7YmY)
> **Length:** ~11 minutes 55 seconds
> **Instructor:** Corey Schafer
> **Main topic:** Python integers, floats, arithmetic operators, floor division, exponents, modulo, order of operations, augmented assignment, `abs()`, `round()`, comparison operators, and type casting.

## 1. What this video is trying to teach

This lesson introduces **numeric data** in Python. The two basic numeric types covered are:

- **`int`** → whole numbers such as `3`, `100`, `-7`
- **`float`** → numbers containing a decimal component such as `3.14`, `10.5`, `-2.75`

The video builds the concept in this order:

1. Understand integers and floats.
2. Check a value's type using `type()`.
3. Perform basic arithmetic.
4. Use floor division with `//`.
5. Use exponentiation with `**`.
6. Use modulo `%` to get remainders.
7. Use modulo to check whether a number is even or odd.
8. Understand order of operations and parentheses.
9. Increment and update variables with augmented assignment such as `+=` and `*=`.
10. Use built-in numeric functions such as `abs()` and `round()`.
11. Compare numeric values using comparison operators.
12. Understand the difference between assignment (`=`) and comparison (`==`).
13. Convert numeric strings into integers using `int()`.

The video emphasizes a practical idea: **numbers can look numeric but still be stored as strings**, so understanding types and casting is important. citeturn415678search0turn415678youtube12

---

# 2. Integers and floats

## Integer (`int`)

An integer is a **whole number** with no decimal part.

```python
num = 3
print(type(num))
```

Output:

```text
<class 'int'>
```

### Line-by-line

#### `num = 3`

- `num` is the variable name.
- `=` is the assignment operator.
- `3` is an integer literal.
- Python stores the integer value `3` in `num`.

Conceptually:

```text
num ─────► 3
           int
```

#### `print(type(num))`

This line contains nested function calls:

```python
type(num)
```

- Python first evaluates `type(num)`.
- `type()` tells us what kind of object `num` is.
- Since `num` contains `3`, Python reports `int`.
- The result from `type()` is then given to `print()`.

Output:

```text
<class 'int'>
```

---

# 3. Floats (`float`)

A float is a number with a decimal component.

```python
num = 3.14
print(type(num))
```

Output:

```text
<class 'float'>
```

### Line-by-line

#### `num = 3.14`

- `num` is the variable.
- `3.14` is a floating-point literal.
- Python stores that value as a `float`.

#### `print(type(num))`

`type(num)` checks the type of the object stored in `num`.

Because `num` is `3.14`, the type is `float`.

### Main difference

```text
3      → int
3.14   → float
```

A useful mental model:

```text
int   = whole number
float = decimal number
```

---

# 4. The `type()` function

`type()` is a built-in Python function used to inspect the type of an object.

```python
num = 3
print(type(num))

num = 3.14
print(type(num))
```

Output:

```text
<class 'int'>
<class 'float'>
```

### Why is `type()` useful?

When your program behaves unexpectedly, one of the first things to check is:

> **What type of value am I actually working with?**

This becomes especially important later when a value that looks like a number is actually a string.

---

# 5. Basic arithmetic operators

Python supports the familiar arithmetic operations:

| Operator | Meaning | Example | Result |
|---|---|---:|---:|
| `+` | Addition | `3 + 2` | `5` |
| `-` | Subtraction | `3 - 2` | `1` |
| `*` | Multiplication | `3 * 2` | `6` |
| `/` | Division | `3 / 2` | `1.5` |
| `//` | Floor division | `3 // 2` | `1` |
| `**` | Exponentiation | `3 ** 2` | `9` |
| `%` | Modulo/remainder | `3 % 2` | `1` |

---

# 6. Addition

```python
print(3 + 2)
```

Output:

```text
5
```

### Line-by-line

#### `3 + 2`

- `3` is the left operand.
- `+` is the addition operator.
- `2` is the right operand.
- Python adds the two numbers.
- Result = `5`.

#### `print(3 + 2)`

Python evaluates `3 + 2` first, then sends `5` to `print()`.

---

# 7. Subtraction

```python
print(3 - 2)
```

Output:

```text
1
```

### What happens?

```text
3 - 2 = 1
```

`-` subtracts the right operand from the left operand.

---

# 8. Multiplication

```python
print(3 * 2)
```

Output:

```text
6
```

### What happens?

```text
3 × 2 = 6
```

The `*` operator means multiplication.

---

# 9. Division with `/`

```python
print(3 / 2)
```

Output in Python 3:

```text
1.5
```

### Important Python 3 behavior

Normal `/` division produces a floating-point result.

```text
3 / 2 = 1.5
```

The video points out that this behavior differs from Python 2, where integer division could discard the decimal portion. For modern Python 3, think:

```python
3 / 2 == 1.5
```

---

# 10. Floor division `//`

If you explicitly want the floor-division behavior, use two forward slashes:

```python
print(3 // 2)
```

Output:

```text
1
```

### Line-by-line

#### `3 // 2`

- `//` is the floor-division operator.
- `3 / 2` is `1.5`.
- Floor division gives the floor of the division result.
- In this example, that is `1`.

Think:

```text
3 / 2   → 1.5
3 // 2  → 1
```

### Important

Do **not** think of `//` simply as "division without decimals" in every mathematical situation. It is specifically **floor division**.

For the positive values in this video, the practical result looks like truncating the decimal.

---

# 11. Exponents with `**`

Python uses two asterisks for powers:

```python
print(3 ** 2)
```

Output:

```text
9
```

### Line-by-line

#### `3 ** 2`

- `3` is the base.
- `**` is the exponentiation operator.
- `2` is the exponent.
- Python calculates `3²`.

```text
3 × 3 = 9
```

More examples:

```python
print(2 ** 3)   # 8
print(5 ** 2)   # 25
print(10 ** 0)  # 1
```

---

# 12. Modulo `%`

The modulo operator returns the **remainder after division**.

```python
print(3 % 2)
```

Output:

```text
1
```

### Why is the answer `1`?

Divide `3` by `2`:

```text
2 goes into 3 → 1 time
remainder     → 1
```

Therefore:

```text
3 % 2 = 1
```

### More examples

```python
print(2 % 2)
print(3 % 2)
print(4 % 2)
print(5 % 2)
```

Output:

```text
0
1
0
1
```

---

# 13. Modulo for even and odd numbers

This is one of the most useful beginner patterns in the lesson.

Every integer divided by `2` leaves either:

```text
0 → even
1 → odd
```

So:

```python
num = 10
print(num % 2)
```

Output:

```text
0
```

That means `10` is even.

Another example:

```python
num = 11
print(num % 2)
```

Output:

```text
1
```

That means `11` is odd.

## Mental rule

```python
num % 2 == 0  # even
num % 2 == 1  # odd
```

Later, this pattern becomes especially useful inside `if` statements and loops.

---

# 14. A practical even/odd check

```python
num = 7

print(num % 2)
```

### Line-by-line

#### `num = 7`

Stores the integer `7` in `num`.

#### `num % 2`

Calculates the remainder when `7` is divided by `2`.

```text
7 ÷ 2 = 3 remainder 1
```

So the expression returns `1`.

---

# 15. Order of operations

Python follows the normal mathematical order of operations.

Consider:

```python
print(3 * 2 + 1)
```

Output:

```text
7
```

### What happens first?

Multiplication happens before addition:

```text
3 * 2 + 1
   ↓
6 + 1
   ↓
7
```

So:

```python
3 * 2 + 1
```

is interpreted as:

```python
(3 * 2) + 1
```

---

# 16. Using parentheses to change the order

Parentheses force Python to evaluate that part first.

```python
print(3 * (2 + 1))
```

Output:

```text
9
```

### Step-by-step

First evaluate the parentheses:

```text
2 + 1 = 3
```

Then multiply:

```text
3 * 3 = 9
```

So:

```text
3 * (2 + 1) = 9
```

### Compare

```python
print(3 * 2 + 1)      # 7
print(3 * (2 + 1))    # 9
```

Parentheses can completely change the result.

---

# 17. Incrementing a variable

A very common programming task is increasing a variable's value.

Start with:

```python
num = 1
```

To add `1`:

```python
num = num + 1
print(num)
```

Output:

```text
2
```

### Line-by-line

#### `num = 1`

Stores `1` in `num`.

#### `num = num + 1`

This may look strange at first, but Python evaluates the **right-hand side first**:

```text
current value of num = 1
1 + 1 = 2
```

Then the result `2` is assigned back to `num`.

Conceptually:

```text
num = 1
     ↓
num + 1
     ↓
2
     ↓
num = 2
```

---

# 18. Augmented assignment `+=`

Because incrementing values is so common, Python provides a shortcut:

```python
num = 1
num += 1
print(num)
```

Output:

```text
2
```

### What does `+=` mean?

This:

```python
num += 1
```

is essentially shorthand for:

```python
num = num + 1
```

### Mental model

```text
+=  → add and assign
```

---

# 19. Other augmented assignment operators

The same pattern works with other arithmetic operators.

```python
num = 1

num += 1   # num = num + 1
num -= 1   # num = num - 1
num *= 10  # num = num * 10
num /= 2   # num = num / 2
```

The operator does two things:

1. Performs the calculation.
2. Stores the result back in the variable.

### Example: `*=`

```python
num = 1
num *= 10
print(num)
```

Output:

```text
10
```

Line-by-line:

- `num = 1` → start at `1`.
- `num *= 10` → multiply the current value by `10` and assign it back.
- `print(num)` → display `10`.

---

# 20. `abs()` — absolute value

Python has a built-in function called `abs()` for absolute values.

```python
print(abs(-3))
```

Output:

```text
3
```

### Line-by-line

#### `abs(-3)`

- `abs()` receives `-3` as its argument.
- It returns the absolute value.
- The absolute value is the distance from zero, ignoring the sign.

So:

```text
abs(-3) → 3
abs(3)  → 3
```

#### `print(abs(-3))`

The result `3` is passed into `print()`.

---

# 21. `round()` — rounding numbers

Python also provides `round()`.

```python
print(round(3.75))
```

Output:

```text
4
```

### Line-by-line

#### `round(3.75)`

- `round()` receives `3.75`.
- With one argument, Python rounds to the nearest integer according to Python's rounding rules.
- The result here is `4`.

#### `print(round(3.75))`

Prints the rounded result.

---

# 22. `round()` with a second argument

You can specify how many decimal places to round to.

```python
print(round(3.75, 1))
```

Output:

```text
3.8
```

### What does the `1` mean?

The second argument tells `round()` how many digits to keep after the decimal point.

```text
round(3.75, 1)
              ↑
       keep 1 decimal place
```

Another example:

```python
print(round(3.14159, 2))
```

Output:

```text
3.14
```

---

# 23. Comparison operators

The video then moves from **calculating numbers** to **comparing numbers**.

Comparison expressions return a Boolean value:

```text
True
False
```

The main comparison operators are:

| Operator | Meaning | Example |
|---|---|---|
| `==` | equal to | `3 == 2` |
| `!=` | not equal to | `3 != 2` |
| `>` | greater than | `3 > 2` |
| `<` | less than | `3 < 2` |
| `>=` | greater than or equal to | `3 >= 2` |
| `<=` | less than or equal to | `3 <= 2` |

---

# 24. `==` — equal to

```python
num1 = 3
num2 = 2

print(num1 == num2)
```

Output:

```text
False
```

### Line-by-line

#### `num1 = 3`

Stores `3`.

#### `num2 = 2`

Stores `2`.

#### `num1 == num2`

Python asks:

> Is `3` equal to `2`?

No, so the result is:

```text
False
```

---

# 25. IMPORTANT: `=` vs `==`

This is one of the most important beginner distinctions.

### `=` means assignment

```python
num = 3
```

Meaning:

> Put `3` into `num`.

### `==` means comparison

```python
num == 3
```

Meaning:

> Is `num` equal to `3`?

### Memorize this

```text
=   → assignment
==  → comparison
```

A common beginner mistake is to use `=` when trying to compare two values.

---

# 26. `!=` — not equal to

```python
print(num1 != num2)
```

Given:

```python
num1 = 3
num2 = 2
```

Output:

```text
True
```

Why?

```text
3 != 2
```

means:

> Is 3 not equal to 2?

Yes → `True`.

---

# 27. `>` — greater than

```python
print(num1 > num2)
```

With:

```python
num1 = 3
num2 = 2
```

Output:

```text
True
```

Because:

```text
3 > 2
```

is true.

---

# 28. `<` — less than

```python
print(num1 < num2)
```

Output:

```text
False
```

Because:

```text
3 < 2
```

is false.

---

# 29. `>=` — greater than or equal to

```python
print(num1 >= num2)
```

Output:

```text
True
```

`>=` means either:

- greater than, **or**
- equal to

So both of these are true:

```python
3 >= 2
3 >= 3
```

---

# 30. `<=` — less than or equal to

```python
print(num1 <= num2)
```

For `3` and `2`, the output is:

```text
False
```

Because `3` is neither less than nor equal to `2`.

---

# 31. All comparison operators together

```python
num1 = 3
num2 = 2

print(num1 == num2)
print(num1 != num2)
print(num1 > num2)
print(num1 < num2)
print(num1 >= num2)
print(num1 <= num2)
```

Output:

```text
False
True
True
False
True
False
```

This is a good block to run yourself until every operator feels natural.

---

# 32. Why comparison results are important

A comparison does not usually directly change your program. It produces a Boolean value:

```python
num1 = 3
num2 = 2

result = num1 > num2
print(result)
```

Output:

```text
True
```

This becomes extremely useful when you later learn conditionals:

```python
if num1 > num2:
    print("num1 is larger")
```

The current video introduces the comparison itself; conditionals come later in the series.

---

# 33. Numbers that are actually strings

This is a very important real-world problem.

Suppose you receive values from a text file, website, form, or another source.

They may look like numbers:

```python
num1 = '100'
num2 = '200'
```

But these are **strings**, not integers.

You can verify that with:

```python
print(type(num1))
print(type(num2))
```

Output:

```text
<class 'str'>
<class 'str'>
```

---

# 34. Why string numbers can cause surprising results

Consider:

```python
num1 = '100'
num2 = '200'

print(num1 + num2)
```

Output:

```text
100200
```

### Why not `300`?

Because `num1` and `num2` are strings.

For strings, `+` means **concatenation**.

So Python effectively does:

```text
"100" + "200"
        ↓
"100200"
```

It is joining text, not performing numeric addition.

---

# 35. Casting

To use the values as integers, convert them using `int()`.

```python
num1 = '100'
num2 = '200'

num1 = int(num1)
num2 = int(num2)

print(num1 + num2)
```

Output:

```text
300
```

This conversion is called **casting** or **type conversion**.

---

# 36. `int()` casting — line-by-line

Look closely at:

```python
num1 = int(num1)
```

### Right-hand side first

Python evaluates:

```python
int(num1)
```

Suppose `num1` currently contains:

```text
"100"
```

`int()` converts that string into the integer:

```text
100
```

Then the assignment stores the new integer back into `num1`.

Conceptually:

```text
num1
 ↓
"100"  (str)
 ↓ int()
100    (int)
```

The same happens for `num2`:

```python
num2 = int(num2)
```

Then:

```python
print(num1 + num2)
```

can perform real numeric addition because both variables now contain integers.

---

# 37. Complete casting example

```python
num1 = '100'
num2 = '200'

print(num1 + num2)

num1 = int(num1)
num2 = int(num2)

print(num1 + num2)
```

Output:

```text
100200
300
```

### What happened?

### Before casting

```text
num1 → "100" → str
num2 → "200" → str
```

`+` means string concatenation.

### After casting

```text
num1 → 100 → int
num2 → 200 → int
```

`+` means numeric addition.

---

# 38. A very important mental model: look at the type

When a value behaves strangely, ask:

```python
type(value)
```

For example:

```python
value = '100'
print(type(value))
```

Output:

```text
<class 'str'>
```

Even though `100` looks like a number, the quotes make it text.

Compare:

```python
value1 = 100
value2 = '100'

print(type(value1))
print(type(value2))
```

Output:

```text
<class 'int'>
<class 'str'>
```

### Remember

```text
100    → integer
'100'  → string
```

---

# 39. Common beginner mistakes

## Mistake 1 — confusing `/` and `//`

```python
3 / 2
```

gives:

```text
1.5
```

while:

```python
3 // 2
```

gives:

```text
1
```

---

## Mistake 2 — confusing `%` with percentage

In Python:

```python
3 % 2
```

does **not** mean "3 percent of 2".

It means:

> remainder after dividing 3 by 2

Result:

```text
1
```

---

## Mistake 3 — forgetting `**` is exponentiation

```python
3 ** 2
```

means:

```text
3² = 9
```

It does not mean multiplication by two.

---

## Mistake 4 — using `=` when you mean `==`

Wrong comparison mindset:

```python
num1 = num2
```

That assigns the value.

Comparison:

```python
num1 == num2
```

That asks whether the values are equal.

---

## Mistake 5 — assuming something that looks like a number is an integer

```python
num = '100'
```

This is a string.

Check it:

```python
print(type(num))
```

Convert it when appropriate:

```python
num = int(num)
```

---

## Mistake 6 — forgetting augmented assignment changes the variable

```python
num = 1
num += 1
```

After the second line, `num` is `2`.

It is equivalent in meaning to:

```python
num = num + 1
```

---

# 40. Useful numeric patterns from this lesson

## Add one

```python
num += 1
```

## Subtract one

```python
num -= 1
```

## Multiply

```python
num *= 10
```

## Divide

```python
num /= 2
```

## Check even

```python
num % 2 == 0
```

## Check odd

```python
num % 2 == 1
```

## Absolute value

```python
abs(num)
```

## Round

```python
round(num)
```

or:

```python
round(num, 2)
```

## Check the type

```python
type(num)
```

## Convert to integer

```python
int(num)
```

---

# 41. Full practice program

This combines the core ideas from the video:

```python
num = 10

print("Number:", num)
print("Type:", type(num))
print("Double:", num * 2)
print("Half:", num / 2)
print("Floor division by 3:", num // 3)
print("Power of 2:", num ** 2)
print("Remainder after division by 3:", num % 3)
print("Absolute value:", abs(-num))
print("Rounded:", round(10.75))
print("Is greater than 5?", num > 5)
print("Is even?", num % 2 == 0)
```

## Line-by-line explanation

### `num = 10`

Stores the integer `10`.

### `print("Number:", num)`

`print()` receives two arguments:

1. The label string `"Number:"`.
2. The value stored in `num`.

By default, `print()` separates multiple arguments with a space.

### `print("Type:", type(num))`

- `type(num)` is evaluated first.
- It returns `<class 'int'>`.
- `print()` displays the label and type.

### `print("Double:", num * 2)`

Multiplies the value in `num` by `2`.

```text
10 * 2 = 20
```

### `print("Half:", num / 2)`

Normal division:

```text
10 / 2 = 5.0
```

The result is a float.

### `print("Floor division by 3:", num // 3)`

Floor division:

```text
10 // 3 = 3
```

### `print("Power of 2:", num ** 2)`

Exponentiation:

```text
10² = 100
```

### `print("Remainder after division by 3:", num % 3)`

Modulo returns the remainder:

```text
10 ÷ 3 = 3 remainder 1
```

Therefore:

```text
10 % 3 = 1
```

### `print("Absolute value:", abs(-num))`

`-num` produces `-10`.

`abs(-10)` returns `10`.

### `print("Rounded:", round(10.75))`

Rounds the floating-point value.

### `print("Is greater than 5?", num > 5)`

Compares `10` and `5`.

Result:

```text
True
```

### `print("Is even?", num % 2 == 0)`

This is a two-step expression:

1. `num % 2` → calculate the remainder.
2. `== 0` → check whether the remainder equals zero.

For `10`:

```text
10 % 2 = 0
0 == 0 → True
```

So `10` is even.

---

# 42. Practice exercises

## Exercise 1 — identify the type

What does each one represent?

```python
x = 10
y = 10.5
z = '10'
```

Use `type()` to verify your answer.

Expected concepts:

```text
10    → int
10.5  → float
'10'  → str
```

---

## Exercise 2 — arithmetic

Predict the output before running this:

```python
print(10 + 3)
print(10 - 3)
print(10 * 3)
print(10 / 3)
print(10 // 3)
print(10 ** 3)
print(10 % 3)
```

Then run it and compare your answers.

---

## Exercise 3 — even or odd

Create a variable:

```python
num = 17
```

Use `%` to determine whether it is even or odd.

Hint:

```python
num % 2
```

---

## Exercise 4 — augmented assignment

Start with:

```python
num = 5
```

Then:

```python
num += 2
num *= 3
num -= 1
```

What is the final value?

Calculate it manually first, then run the code.

---

## Exercise 5 — comparisons

Given:

```python
num1 = 10
num2 = 20
```

Predict whether each expression is `True` or `False`:

```python
num1 == num2
num1 != num2
num1 > num2
num1 < num2
num1 >= num2
num1 <= num2
```

---

## Exercise 6 — string to integer

Start with:

```python
num1 = '50'
num2 = '25'
```

First see what happens with:

```python
print(num1 + num2)
```

Then convert them:

```python
num1 = int(num1)
num2 = int(num2)
```

and run:

```python
print(num1 + num2)
```

Explain why the two outputs are different.

---

## Exercise 7 — build a mini calculator

Create:

```python
a = 20
b = 6
```

Print:

- addition
- subtraction
- multiplication
- normal division
- floor division
- exponentiation
- remainder

Example structure:

```python
print("Addition:", a + b)
print("Subtraction:", a - b)
print("Multiplication:", a * b)
print("Division:", a / b)
print("Floor division:", a // b)
print("Power:", a ** b)
print("Remainder:", a % b)
```

---

# 43. Cheat sheet

## Numeric types

```python
10        # int
10.5      # float
'10'      # str
```

## Arithmetic

```python
+     # add
-     # subtract
*     # multiply
/     # divide
//    # floor divide
**    # exponent
%     # remainder
```

## Assignment shortcuts

```python
+=
-=
*=
/=
```

## Built-in functions

```python
type(x)
abs(x)
round(x)
int(x)
```

## Comparisons

```python
==    # equal
!=    # not equal
>     # greater than
<     # less than
>=    # greater than or equal
<=    # less than or equal
```

## Even / odd

```python
x % 2 == 0   # even
x % 2 == 1   # odd
```

---

# 44. The most important concepts to memorize

### 1. `int` vs `float`

```text
3      → int
3.14   → float
```

### 2. `/` vs `//`

```text
3 / 2   → 1.5
3 // 2  → 1
```

### 3. `%` gives the remainder

```text
3 % 2 → 1
```

### 4. `**` means power

```text
3 ** 2 → 9
```

### 5. `=` vs `==`

```text
=  → assignment
== → comparison
```

### 6. `+=` is shorthand

```python
num += 1
```

means:

```python
num = num + 1
```

### 7. Strings that look like numbers are still strings

```python
'100'  # str
100    # int
```

### 8. Use `int()` to convert a numeric string

```python
num = int('100')
```

Now:

```python
num == 100
```

is comparing an integer with an integer.

---

# 45. Final mental model

Think of Python numeric work like this:

```text
                NUMERIC DATA
                     │
          ┌──────────┴──────────┐
          │                     │
        int                   float
     whole number          decimal number
          │                     │
          └──────────┬──────────┘
                     │
                OPERATIONS
                     │
       ┌─────────────┼─────────────┐
       │             │             │
    arithmetic    comparison    conversion
       │             │             │
   + - * / //    == != > <     int(...)
     ** %         >= <=
       │
       ├── `//` → floor division
       ├── `%`  → remainder
       └── `**` → power
```

The key pattern is:

```python
value = some_number
```

Then inspect or manipulate it:

```python
type(value)
value + 1
value * 2
value % 2
value > 10
```

And when data comes from text-based sources, remember:

```python
'100'       # string
int('100')  # integer
```

That distinction between **what a value looks like** and **what type it actually is** is one of the most important lessons in this video. citeturn415678search0

---

