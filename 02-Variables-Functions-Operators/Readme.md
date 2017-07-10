# Variables, Functions & Operators

## Objectives

- Familiarize yourself with Xcode, Swift and Playgrounds
- Develop an intuition on when to use classes, structs, enums and protocols
- Learn how to write functions, control statements

## Reading
- [Swift Playgrounds - Variables](Variables.playground)
- Apple App Development iBook - Chapter 1.2 pg20

## Vocabulary

- Comments
- Variable
- Function
- Type(s)
- Tuple
- Playgrounds
- Return value
- Anonymous functions
- Structs
- Enums
- Class
- Protocols
- (Im)Mutable

## Playgrounds

Playgrounds allow you to write Swift code and experiment without building an entire app. You can build cool features, experiment and execute your code quickly.



## Swift Types - Enums, Structs, Classes, Protocols

At the heart of Swift is its type system. This makes Swift safe and fun to write because the compiler catches logical error at compile time.

Swift gives you, the programmer the ability to create your own types made out of an aggregate of basic types.

**Basic named types**:

- Enums
- Structs
- Classes
- Protocols

**Aggregate types**:

- Functions(Closures)
- Tuples

Primitive types in Swift are composed of these basic types. Take a look at type signature for the Int, Double, Float type in Swift.

```swift
public struct Int : SignedInteger, Comparable, Equatable {}
```

Swift's standard library (a collection of useful functionality we use when building software in swift) is also made up of these basic types.


## Challenges



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

### More Closure examples


## Operators


## Questions

1. What is the difference between a class and a struct?
2. When will you use a class vs a struct?


## Challenges

Download the playground below and complete the following challenges

    1. Write a swift function that takes in an integer and prints its square