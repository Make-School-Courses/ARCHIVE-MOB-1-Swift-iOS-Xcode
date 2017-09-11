//: [Previous](@previous)
class Person {
  let name: String
  
  init(name: String) {
    self.name = name
  }
}

enum MassageChair {
  case free
  case occupied(Person)
}

let nikolas = Person(name: "Nikolas")
let massageChair = MassageChair.occupied(nikolas)

switch massageChair {
case .free:
  print("The chair is currently free.")
case .occupied(let person):
  print("\(person.name) is enjoying an extremyle nice and comforting massage right now. Please don't disturb and wait until it's your turn!")
}

/*:
 
 ### Challenges
 
 1. Model a type called `Box` that is either empty or contains exactly one `Thing`. `Thing` looks as follows:
 ```
 class Thing {
   let name: String
 
   init(name: String) {
     self.name = name
   }
 }
 ```
 2. Create an empty `Box`
 3. Create three different `Box`es, each should contain one item of the following: `Soccer Ball`, `Phone`, `Chocolate`
 4. Write a function that takes a `Box` as an argument and returns a `String` indicating what that `Box` contains.
 5. Make the `Box` _generic_ so that it can contain an object of any type, not just `Thing`.
 */

class Thing {
  let name: String
  
  init(name: String) {
    self.name = name
  }
}

enum Box<T> {
  case empty
  case contains(T)
}

enum Optional<T> {
  case none
  case some(T)
}


var emptyBox = Box<String>.empty
emptyBox = .contains("hello")
var stringBox = Box<String>.empty

let soccerBall = Thing(name: "Soccer Ball")
let boxWithSoccerBall = Box.contains(soccerBall)


protocol HasName {
  var name: String {
    get
  }
}

func inTheBox(box: Box<HasName>) -> String {
  switch box {
  case .empty:
    return "box is empty"
  case .contains(let thing):
    return "box contains something: ] \(thing.name))"
  }
}



//inTheBox(box: boxWithSoccerBall)
//inTheBox(box: emptyBox)

let box = Box.contains("hello")
//inTheBox(box: box)





