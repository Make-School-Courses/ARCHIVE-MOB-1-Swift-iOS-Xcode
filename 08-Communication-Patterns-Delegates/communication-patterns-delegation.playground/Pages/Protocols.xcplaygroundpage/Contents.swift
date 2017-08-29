import Foundation

/*:
 
 # Protocols
 
 A protocol defines a blueprint of methods, properties, and other requirements that
 suit a particular task or piece of functionality.
 
 The protocol can then be adopted by a class, structure, or enumeration to provide 
 an actual implementation of those requirements. Any type that satisfies the 
 requirements of a protocol is said to conform to that protocol.
 
 ## Defining and conforming to a Protocol
 
*/

enum Food {
    case fish
    case sandwich
}

protocol Mammal {
    func eat() -> Food
}

struct Orka: Mammal {
    func eat() -> Food {
        return Food.fish
    }
}

class Human: Mammal {
    func eat() -> Food {
        return Food.sandwich
    }
}

let peter = Human()
peter.eat()

let myOrka = Orka()
myOrka.eat()


/*:
 Protocols can also have required properties like variables
*/

protocol Sandwich {
    var diameter: Int {get set}
}

/*:
 
 ## Protocol Extensions
 
 Protocols on their own do not have any functionality, they define contracts
 that an conformer must adhere to. To add functionality to a protocol, we can
 extent it.
 
 */


enum ChangeType {
    case increase
    case decrease
}

struct Health {
    var value: Int = 100
    var changeAmount: Int = 10
    
    mutating func change(type: ChangeType) {
        switch type {
        case .increase:
            value += changeAmount
        case .decrease:
            value -= value
        }
    }
}

protocol Character {
    var health: Health {get set}
    
    func changeHealth(character: Character, type: ChangeType) -> Character
}

extension Character {
    func changeHealth(character: Character, type: ChangeType) -> Character {
        return character
    }
}

struct Henchman: Character {
    var health: Health = Health()
}

struct Hero: Character, Hittable {
    var health: Health = Health()
}

protocol Hittable {
    func hit(target: Character) -> Character
    func takeDamage()
}

extension Hittable {
    func hit(target: Character) -> Character {
        return target.changeHealth(character: target, type: .decrease)
    }

    func takeDamage() {}
}


/*:
 ## Protocol methods and conformation, Required vs Optional
 
 By default when you conform to a protocol, you are required to implement all methods defined by the protocol.
 Using the @optional keyword, we can mark a method or variable in a protocol as an optional method
 
 To to this, we must mark our protocol with @objc, even though we are not interacting with Objective-C.
 Doing this imposes some restrictions, one of them being that we can only use the protocol on reference types.
 
*/

@objc protocol Purchasable {
    @objc optional var discount: Double {get set}
    @objc optional func purchase()
}


/*:
 
 ## Challenges
 
 1. Create a model of a car, it should have a max speed, number of wheels, doors and model properties.
 2. Generalize the car, create a model for a vehicle, a car & motocycles are vehicles
 
 
 */


//: [Next](@next)
