//: [Previous](@previous)

import Foundation

// implicit assignment of raw values
enum Face1: String {
  case happy
  case sad
  case nerd
}

Face1.happy.rawValue

// explicit assignment of raw values
enum Face2: String {
  case happy = ":-)"
  case sad = ":-("
  case nerd = "8-)"
}

Face2.happy.rawValue

// implicit assignment of raw values
enum Weekday1: Int {
  case monday
  case tuesday
  case wednesday
  case thursday
  case friday
  case saturday
  case sunday
}
Weekday1.monday.rawValue

// explicit assignment of raw values
enum Weekday2: Int {
  case monday = 1
  case tuesday
  case wednesday
  case thursday
  case friday
  case saturday
  case sunday
}
Weekday2.monday.rawValue


/*:
 
 ### Challenges
 
 1. Model a type called `CardinalDirection` using an `enum`. What could be the different _values_ for this type?
 2. Write a function called `help`, that takes a value of type `CardinalDirection` and returns a `String`. This function is supposed to help a lost ship on an ocean to find its way back home (it needs to go north-east). The return value of the function should indicate whether the value that was passed in helps the ship to get home. Use an *arrow unicode character* (`→`, `←`, `↑`, `↓`) in the returned `String` to illustrate the direction on a map, e.g.: `This direction (↓) does not help the ship to get home.`
 3. Model a type called `Month` using an `enum`. That type should represent all the different months in one year. 
 4. Write a function that returns a `String` and indicates at which position this month is inside a year, e.g.: `March is the 3rd month of the year`.
 */
enum CardinalDirection: String{
  case north = "↑"
  case northeast = "↑→"
  case northwest = "↑←"
  case east = "→"
  case west = "←"
}

func help(direction: CardinalDirection) -> String {
  let directionHome = direction.rawValue
  let answer = "Go \(directionHome) by in order to arrive home."
  
  switch direction {
  default:
    return answer
  }
}

print(help(direction: CardinalDirection.west))
print(help(direction: CardinalDirection.northeast))

enum Month: String {
  case january = "1st"
  case february = "2nd"
  case march = "3rd"
  case april = "4th"
  case may = "5th"
  case june = "6th"
  case july = "7th"
  case august = "8th"
  case september = "9th"
  case october = "10th"
  case november = "11th"
  case december = "12th"
}

func positionOfTheyYear (month: Month) -> String{
  let capitalMonth = "\(month)".capitalized
  let position = month.rawValue
  let answer = "\(capitalMonth) is the \(position) month of the year."
  
  return answer
}

print(positionOfTheyYear(month: Month.january))










