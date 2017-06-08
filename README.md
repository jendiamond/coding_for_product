## Solutions for the Coding for Product [Coding Exercises](http://codingforproduct.com/coding_exercise)
These solutions are done in Ruby 2.3.0

### Run the Ruby code
#### coding_for_product$ `cd ruby`
#### coding_for_product/ruby$ `ruby codingforproduct_coding_exercises.rb`
#### coding_for_product/ruby$ `ruby codingforproduct_class.rb`

### Run the tests like this:
#### coding_for_product/ruby$ `ruby test/codingforproduct_test.rb`

---

### Exercise 1
Write a function that when given a key value pair with a title and url, the function will print a linked title.

If the title is longer than 50 characters, truncate the title to 50 characters followed by 3 ellipses.
To "print" use the print/console method from your programming language.

#### Input:

// this is a javascript object. Your input will differ depending on the language you use.
```
{
  title: 'really, really, really long title that will be chopped off',
  link: 'example.com'
}
```

#### Output:
```
<a href="example.com">really, really, really long title that will be cho…</a>
```

### Exercise 2
Write a function when given an array of key value pairs, the function will print out a linked title for key value pair. Call the function from previous question in this function.

#### Input:

// this is a javascript array of objects. Your input will differ depending on the language you use.

[
  {
    title: 'Github',
    link: 'github.com'
  },
  {
    title: 'Google',
    link: 'google.com'
  },
  {
    title: 'really, really, really long title that will be chopped off',
    link: 'example.com'
  }
]

#### Output:
```
<a href="github.com">Github</a>
<a href="google.com">Google</a>
<a href="example.com">really, really, really long title 3 that will be ch…</a>
```
