# Xcode, Playgounds & Swift Setup

## Objectives

- Familiarize yourself with Xcode, Swift and Playgrounds
- Learn how to write functions, control statements

## Vocabulary

- Comments
- Function
- Type(s)
- Playgrounds
- Return value
- Anonymous functions

## Playgrounds

Playgrounds allow you to write Swift code and experiment without building an entire app. You can build cool features, experiment and execute your code quickly.

## Functions

Functions in Swift are denoted by the func keyword. Swift is a strongly typed language, hence functions are differentiated by arity (number of parameters) as well as the type of each parameter.

```swift
func square(number: Int) -> Int {
    return number * number
}

func square(number: Float) -> Float {
    return number * number
}

``` 
*Same function names, but different functions according to Swift*

## Anonymous Function AKA Closures

As we learned from above, functions allow us to define blocks of code with specific functionality. We can give a function a name by using the func keyword. However, functions themselves are a special kind of closure, a named one. Closures are blocks of code that encapsulate specific functionality, and can 'close' on variables & constants. Lets look at an exampe closure.

```swift
var square: (Int) -> Int = { number in
    return number * number
}

```  
In this example, we store the closure inside a variable, square.

square(5)


## Challenges

Download the playground below and complete the following challenges

    1. Write a swift function that takes in an int*eger and prints its square