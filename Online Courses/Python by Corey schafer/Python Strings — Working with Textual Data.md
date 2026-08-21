

> **Video:** [Python Tutorial for Beginners 2: Strings - Working with Textual Data](https://www.youtube.com/watch?v=k9TUPpGqYTo)  
> **Length:** ~21 minutes  
> **Instructor:** Corey Schafer  
> **Main topic:** Python `str` (string) objects, indexing, slicing, string methods, concatenation, `.format()`, f-strings, `dir()` and `help()`.

## 1. What this video is trying to teach

In Python, **textual data is represented by strings** (`str`). A string is a sequence of characters surrounded by quotes.

The video builds the concept in this order:

1. Create a string and store it in a variable.
2. Understand single quotes vs double quotes and multiline strings.
3. Get a string's length with `len()`.
4. Access individual characters with indexing.
5. Extract a portion of a string with slicing.
6. Use string methods such as `.lower()`, `.upper()`, `.count()`, `.find()`, and `.replace()`.
7. Join strings using `+` (concatenation).
8. Format strings with `.format()`.
9. Use modern **f-strings**.
10. Explore Python's available string operations with `dir()` and `help()`.

The video also points toward Corey's separate slicing and string-formatting tutorials for deeper coverage.

---

# 2. The basic idea: a string is text

```python
message = "Hello World"
print(message)
```

### Line-by-line

#### `message = "Hello World"`

- `message` is a **variable name**.
- `=` is the **assignment operator**.
- `"Hello World"` is a string literal.
- Python evaluates the string literal and stores that string object under the name `message`.
- The variable name is lowercase, which follows the common Python naming convention.

Conceptually:

```text
message  ──────►  "Hello World"
```

#### `print(message)`

- `print()` is a built-in Python function.
- `message` is passed into `print()` as an argument.
- Python looks up the value stored in `message` and displays it.

Output:

```text
Hello World
```

### Why use a variable instead of writing the text everywhere?

Because you can reuse or change the value in one place:

```python
message = "Hello World"

print(message)
print(message)
print(message)
```

All three `print()` calls use the same stored string.

---

# 3. Variable naming conventions

The video recommends descriptive variable names. For multiple words, a common Python convention is **snake_case**:

```python
first_name = "Hamza"
last_name = "Khan"
```

### Why this is better than unclear names

Bad:

```python
x = "Hamza"
y = "Khan"
```

Better:

```python
first_name = "Hamza"
last_name = "Khan"
```

The second version tells you what the data represents without needing to inspect the value first.

---

# 4. Single quotes vs double quotes

Both of these create strings:

```python
message1 = 'Hello World'
message2 = "Hello World"
```

They represent the same kind of Python object: `str`.

## Why would you choose one over the other?

Choose the quote style that makes the text easier to write without escaping quotes.

Example containing an apostrophe:

```python
message = "It's a beautiful day"
```

Here the outer quotes are double quotes, so the apostrophe in `It's` does not terminate the string.

Or the other way around:

```python
message = 'He said "Hello"'
```

The double quotes inside the text are harmless because the string is surrounded by single quotes.

### Important idea

The quotes are **syntax used to define the string**. They are not normally part of the stored text.

---

# 5. Multiline strings

Python also allows a string to span multiple lines by using triple quotes:

```python
message = """Hello World
This is a multiline string.
It can contain several lines."""

print(message)
```

### Line-by-line

#### `message = """Hello World`

Starts a multiline string.

#### `This is a multiline string.`

Still part of the same string. The newline itself becomes part of the string value.

#### `It can contain several lines."""`

The closing triple quotes mark the end of the string.

### Output

```text
Hello World
This is a multiline string.
It can contain several lines.
```

You can use either triple single quotes or triple double quotes.

---

# 6. `len()` — get the length of a string

```python
message = "Hello World"
print(len(message))
```

Output:

```text
11
```

### Why 11?

Count every character, including the space:

```text
H e l l o _ W o r l d
0 1 2 3 4 5 6 7 8 9 10
```

There are 11 characters total.

### Line-by-line

#### `len(message)`

- `len()` is a built-in function.
- It asks the object for its length.
- For a string, that means the number of characters.

#### `print(len(message))`

- `len(message)` is evaluated first.
- The result (`11`) is passed to `print()`.
- `print()` displays `11`.

---

# 7. Indexing — accessing individual characters

Python strings are **zero-indexed**.

```python
message = "Hello World"

print(message[0])
print(message[-1])
```

Output:

```text
H
d
```

## Positive indexing

```text
String:   H e l l o   W o r l d
Index:    0 1 2 3 4 5 6 7 8 9 10
```

So:

```python
print(message[0])
```

means:

> Give me the character at index `0`.

That is `H`.

### Important rule

The first character is at index `0`, **not** index `1`.

---

# 8. Negative indexing

Python can also count from the end:

```text
String:    H   e   l   l   o       W   o   r   l   d
Negative: -11 -10  -9  -8  -7  -6  -5  -4  -3  -2  -1
```

Therefore:

```python
print(message[-1])
```

returns the final character:

```text
d
```

### Why is this useful?

You do not need to know the string's exact length just to access its last character.

Instead of:

```python
print(message[len(message) - 1])
```

you can simply write:

```python
print(message[-1])
```

---

# 9. Index errors

Trying to access an index that does not exist raises an `IndexError`.

For example, this is invalid for `"Hello World"`:

```python
message = "Hello World"
print(message[11])
```

Valid positive indices are `0` through `10`.

The problem is that index `11` is one position past the end.

### Mental model

If:

```python
len(message) == 11
```

then:

```text
last valid index = 11 - 1 = 10
```

---

# 10. Slicing strings

**Slicing** extracts a range of characters.

General syntax:

```python
string[start:end]
```

The critical rule is:

> `start` is included, but `end` is excluded.

Example:

```python
message = "Hello World"
print(message[0:5])
```

Output:

```text
Hello
```

### Why does `[0:5]` return 5 characters?

It takes indices:

```text
0 1 2 3 4
H e l l o
```

and stops **before** index `5`.

So:

```text
[0:5]  → indices 0, 1, 2, 3, 4
```

### Useful slicing patterns

```python
message[0:5]   # first five characters
message[6:11]  # World
message[:5]    # from the beginning through index 4
message[6:]    # from index 6 to the end
message[:]     # entire string
```

The video points to Corey's dedicated slicing tutorial for a deeper treatment of this topic.

---

# 11. Strings have methods

A string is an object, and Python gives string objects many built-in methods.

Example:

```python
message = "Hello World"

print(message.lower())
print(message.upper())
```

Output:

```text
hello world
HELLO WORLD
```

Notice the syntax:

```python
message.lower()
```

This means:

1. Find the object stored in `message`.
2. Access its `lower` method.
3. Call that method using `()`.
4. The method returns a new string containing the lowercase version.

---

# 12. `.lower()`

```python
message = "Hello World"
print(message.lower())
```

### Line-by-line

#### `message = "Hello World"`

Stores the original string.

#### `message.lower()`

Calls the string's `lower()` method.

The returned string is:

```text
hello world
```

#### `print(message.lower())`

Prints the returned lowercase string.

### Important

This does **not** permanently change `message`.

```python
message = "Hello World"
message.lower()

print(message)
```

The output is still:

```text
Hello World
```

Why? Because strings are immutable: methods such as `lower()` return a new string instead of editing the existing string in-place.

To save the result:

```python
message = message.lower()
```

---

# 13. `.upper()`

```python
message = "Hello World"
print(message.upper())
```

`.upper()` returns a new string with alphabetic characters converted to uppercase.

Output:

```text
HELLO WORLD
```

Again, the original string is not modified unless you assign the returned value:

```python
message = message.upper()
```

---

# 14. `.count()` — count occurrences

```python
message = "Hello World"
print(message.count("l"))
```

Output:

```text
3
```

There are three lowercase `l` characters in `Hello World`.

### Line-by-line

#### `message.count("l")`

- `message` is the string being searched.
- `.count()` is the method.
- `"l"` is the substring to count.
- The method returns how many times that substring occurs.

Then `print()` displays the result.

### Case matters

These are different searches:

```python
message.count("l")
message.count("L")
```

Python string comparisons are case-sensitive by default.

---

# 15. `.find()` — find where text starts

```python
message = "Hello World"
print(message.find("World"))
```

Output:

```text
6
```

Why `6`?

```text
H e l l o _ W o r l d
0 1 2 3 4 5 6 7 8 9 10
          ^
```

The substring `World` starts at index `6`.

### What if it cannot find the substring?

```python
print(message.find("Python"))
```

Output:

```text
-1
```

So:

```text
find(...) → index of first match
find(...) → -1 if no match exists
```

This is useful when you need to check whether a piece of text occurs inside another string.

---

# 16. `.replace()` — replace text

Syntax:

```python
string.replace(old, new)
```

Example:

```python
message = "Hello World"
new_message = message.replace("World", "Universe")

print(new_message)
```

Output:

```text
Hello Universe
```

### Line-by-line

#### `message = "Hello World"`

Creates the original string.

#### `new_message = message.replace("World", "Universe")`

- `message.replace(...)` searches for `"World"`.
- Every matching occurrence is replaced by `"Universe"`.
- The method returns a **new string**.
- That returned string is assigned to `new_message`.

#### `print(new_message)`

Prints the new string.

### Original string remains unchanged

```python
message = "Hello World"
message.replace("World", "Universe")

print(message)
```

Still prints:

```text
Hello World
```

To keep the changed version, assign it to a variable.

---

# 17. Concatenation with `+`

**Concatenation** means joining strings together.

```python
greeting = "Hello"
name = "Michael"

message = greeting + ", " + name
print(message)
```

Output:

```text
Hello, Michael
```

### Line-by-line

#### `greeting = "Hello"`

Stores the first piece of text.

#### `name = "Michael"`

Stores the second piece of text.

#### `message = greeting + ", " + name`

Python evaluates from left to right:

```text
"Hello" + ", " → "Hello, "
"Hello, " + "Michael" → "Hello, Michael"
```

The middle string `", "` contains both a comma and a space.

#### `print(message)`

Displays the final combined string.

---

# 18. Why concatenation can become ugly

For a small sentence, `+` is fine:

```python
message = greeting + ", " + name + "!"
```

But imagine a sentence with many variables:

```python
message = greeting + ", " + first_name + " " + last_name + ", you are " + str(age) + " years old."
```

This becomes hard to read and requires care around spaces and type conversion.

That is why Python provides **formatted strings**.

---

# 19. `.format()` — formatted strings the older way

The video introduces `.format()` as a cleaner alternative to long chains of concatenation.

Basic idea:

```python
greeting = "Hello"
name = "Michael"

message = "{}, {}. Welcome!".format(greeting, name)
print(message)
```

Output:

```text
Hello, Michael. Welcome!
```

### How it works

The `{}` placeholders mark locations where values will be inserted.

```text
"{}, {}. Welcome!"
   ↑  ↑
   |  |
 greeting name
```

Then:

```python
.format(greeting, name)
```

fills the first `{}` with `greeting` and the second `{}` with `name`.

### Line-by-line

#### `greeting = "Hello"`

Stores the word `Hello`.

#### `name = "Michael"`

Stores the name.

#### `message = "{}, {}. Welcome!".format(greeting, name)`

- Start with the template string.
- First `{}` receives `greeting`.
- Second `{}` receives `name`.
- The resulting string is assigned to `message`.

#### `print(message)`

Displays the formatted sentence.

---

# 20. f-strings — modern string formatting

The video then introduces **f-strings**, available since Python 3.6.

Example:

```python
greeting = "Hello"
name = "Michael"

message = f"{greeting}, {name}. Welcome!"
print(message)
```

Output:

```text
Hello, Michael. Welcome!
```

### The important syntax

The `f` before the opening quote makes this an f-string:

```python
f"..."
```

Inside the string, expressions are placed in `{}`:

```python
f"Hello {name}"
```

Python evaluates the expression inside the braces and inserts the result into the string.

---

# 21. f-strings can evaluate expressions

This is one of the most useful ideas from the video.

```python
name = "Michael"
message = f"Hello, {name.upper()}!"
print(message)
```

Output:

```text
Hello, MICHAEL!
```

### Line-by-line

#### `name = "Michael"`

Stores the string.

#### `f"Hello, {name.upper()}!"`

Because it is an f-string, Python evaluates the expression inside `{}`.

Inside the braces:

```python
name.upper()
```

returns:

```text
MICHAEL
```

Python inserts that value into the string.

#### `print(message)`

Prints the completed sentence.

### You can put normal expressions inside `{}`

For example:

```python
name = "Hamza"
age = 20

print(f"My name is {name} and next year I will be {age + 1}.")
```

The expression `age + 1` is evaluated before the final string is produced.

---

# 22. `dir()` — discover what an object can do

Python has a built-in function called `dir()`.

```python
message = "Hello World"
print(dir(message))
```

`dir(message)` gives you a list of names available on the string object, including methods and attributes.

You will see entries similar to:

```text
['__add__', '__class__', ..., 'capitalize', 'count', 'find', 'lower', 'replace', 'split', 'upper', ...]
```

The list is long, and that is the point: **Python's objects already come with a lot of functionality.**

### How to think about `dir()`

When you are learning or coding and think:

> "What can I do with this object?"

try:

```python
dir(object)
```

For example:

```python
dir(str)
```

shows the methods available on the string type itself.

---

# 23. `help()` — learn what a method does

Once `dir()` tells you that a method exists, `help()` can explain it.

For example:

```python
help(str.lower)
```

This asks Python to display documentation for the `str.lower` method.

You can also inspect the string type:

```python
help(str)
```

### Why this matters

This is an important programming habit:

```text
1. I know the object.
2. I need to know what operations exist.
3. Use dir() to explore.
4. Find a method that looks useful.
5. Use help() to learn its exact behavior.
```

This makes the Python interpreter itself a learning tool.

---

# 24. The key mental model: strings are objects

By the end of the video, do not think of a string as just "some text".

Think:

```text
"Hello World"
      ↓
   str object
      ↓
 ┌─────────────────────────┐
 │ indexing                │
 │ slicing                 │
 │ lower()                 │
 │ upper()                 │
 │ count()                 │
 │ find()                  │
 │ replace()               │
 │ split()                 │
 │ ...many more methods... │
 └─────────────────────────┘
```

Once you understand that strings are objects, the syntax starts making sense:

```python
message.lower()
message.upper()
message.count("l")
message.find("World")
message.replace("World", "Python")
```

The `.` means:

> Access something belonging to this object.

The `()` means:

> Call this method.

---

# 25. Full practice program

Here is a small program combining the ideas from the video.

```python
first_name = "Hamza"
last_name = "Khan"

full_name = f"{first_name} {last_name}"

print("Name:", full_name)
print("Length:", len(full_name))
print("First character:", full_name[0])
print("Last character:", full_name[-1])
print("Uppercase:", full_name.upper())
print("Lowercase:", full_name.lower())
print("Number of a's:", full_name.lower().count("a"))
print("Position of Khan:", full_name.find("Khan"))
print("Changed name:", full_name.replace("Khan", "Marwat"))
```

## Line-by-line explanation

### `first_name = "Hamza"`

Creates the first-name string.

### `last_name = "Khan"`

Creates the last-name string.

### `full_name = f"{first_name} {last_name}"`

Uses an f-string to combine the two values with a space between them.

The result is:

```text
Hamza Khan
```

### `print("Name:", full_name)`

`print()` accepts multiple arguments. It displays the label and the full name separated by a space.

### `print("Length:", len(full_name))`

`len(full_name)` is evaluated first, and that number is printed alongside the label.

### `print("First character:", full_name[0])`

Index `0` gives the first character.

### `print("Last character:", full_name[-1])`

Index `-1` gives the last character.

### `print("Uppercase:", full_name.upper())`

Calls `.upper()` and prints the returned uppercase string.

### `print("Lowercase:", full_name.lower())`

Calls `.lower()` and prints the returned lowercase string.

### `print("Number of a's:", full_name.lower().count("a"))`

This is a **method chain**:

```text
full_name
   ↓
.lower()
   ↓
.count("a")
```

First the name becomes lowercase. Then `.count("a")` counts lowercase `a` characters.

### `print("Position of Khan:", full_name.find("Khan"))`

Searches for `Khan` and prints the index where it begins.

### `print("Changed name:", full_name.replace("Khan", "Marwat"))`

Creates a new string with `Khan` replaced by `Marwat`, then prints that returned string.

The original `full_name` is unchanged.

---

# 26. Important rules to memorize

## Strings

```python
message = "Hello World"
```

Text is stored as a `str` object.

## Indexing

```python
message[0]    # first character
message[-1]   # last character
```

## Slicing

```python
message[start:end]
```

`start` is included, `end` is excluded.

## Length

```python
len(message)
```

Returns the number of characters.

## Lowercase / uppercase

```python
message.lower()
message.upper()
```

## Count

```python
message.count("l")
```

Counts occurrences.

## Find

```python
message.find("World")
```

Returns the first starting index, or `-1` when not found.

## Replace

```python
message.replace("old", "new")
```

Returns a new string with the replacement.

## Concatenation

```python
first + " " + last
```

Joins strings together.

## `.format()`

```python
"Hello, {}".format(name)
```

Places values into `{}` placeholders.

## f-string

```python
f"Hello, {name}"
```

Modern, readable string interpolation.

## Explore an object

```python
dir(message)
help(str.lower)
```

Use `dir()` to discover; use `help()` to understand.

---

# 27. Common beginner mistakes

## Mistake 1 — forgetting that indexing starts at 0

Wrong mental model:

```text
first character = 1
```

Correct:

```text
first character = 0
```

---

## Mistake 2 — using an index outside the string

```python
message = "Hello"
print(message[5])
```

Valid indices are `0` through `4`, so index `5` causes `IndexError`.

---

## Mistake 3 — forgetting that slicing excludes the end index

```python
message[0:5]
```

does **not** include index `5`.

Think:

```text
[start, end)
```

The start is included; the end is excluded.

---

## Mistake 4 — expecting string methods to modify the original string

This:

```python
message.lower()
```

does not permanently change `message`.

Use:

```python
message = message.lower()
```

when you want to keep the result.

---

## Mistake 5 — forgetting spaces when concatenating

```python
first = "John"
last = "Wick"
print(first + last)
```

Output:

```text
JohnWick
```

Add the space explicitly:

```python
print(first + " " + last)
```

Or use an f-string:

```python
print(f"{first} {last}")
```

---

# 28. Practice exercises

## Exercise 1 — indexing

```python
text = "Python Programming"
```

Find:

- The first character.
- The last character.
- The character at index `7`.

---

## Exercise 2 — slicing

Given:

```python
text = "Python Programming"
```

Print:

```text
Python
Programming
```

Try solving it using slicing only.

---

## Exercise 3 — string methods

Given:

```python
message = "Hello World"
```

Print:

```text
hello world
HELLO WORLD
3
6
Hello Universe
```

Use:

- `.lower()`
- `.upper()`
- `.count()`
- `.find()`
- `.replace()`

---

## Exercise 4 — f-string

Create:

```python
first_name = "Hamza"
last_name = "Khan"
age = 20
```

Then print a sentence using one f-string:

```text
My name is Hamza Khan and I am 20 years old.
```

---

## Exercise 5 — investigate Python yourself

Run:

```python
message = "Hello World"
print(dir(message))
help(str.lower)
help(str.replace)
```

Read the output and try one method you have never used before.

---

# 29. Final summary

The most important concepts from this lesson are:

```text
STRING
  │
  ├── create → "Hello World"
  ├── length → len(message)
  ├── index → message[0]
  ├── negative index → message[-1]
  ├── slice → message[0:5]
  ├── lowercase → message.lower()
  ├── uppercase → message.upper()
  ├── count → message.count("l")
  ├── find → message.find("World")
  ├── replace → message.replace("World", "Python")
  ├── concatenate → first + " " + last
  ├── format → "{}, {}".format(first, last)
  ├── f-string → f"{first} {last}"
  ├── inspect → dir(message)
  └── documentation → help(str.lower)
```

### The one thing to really understand

Do not just memorize method names. Understand the pattern:

```python
object.method(arguments)
```

For example:

```python
message.lower()
```

means:

```text
object  = message
method  = lower
args    = none
result  = a new lowercase string
```

And:

```python
message.replace("World", "Python")
```

means:

```text
object  = message
method  = replace
args    = "World", "Python"
result  = a new string with the replacement
```

Once this object → method → result pattern is comfortable, many parts of Python become much easier to understand.

---
