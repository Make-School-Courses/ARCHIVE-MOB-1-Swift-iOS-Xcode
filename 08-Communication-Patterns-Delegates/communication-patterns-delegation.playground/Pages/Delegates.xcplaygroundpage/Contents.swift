import UIKit
import PlaygroundSupport

/*:
 # Delegation
 
 Delegation is one of many communication patterns used in iOS to distribute information.
 Delegation is one-to-one, which means that only two participants can engage in delegation
 */

protocol TapDetectionDelegate: class {
    func didTapCircle(at: CGPoint)
}

/*:
We can constrain protocols to classes were we are only going to use this protocol on classes
 
 When creating a delegate, we only want a blueprint of the contract; functions that describe what information is being passed from the delegate
*/


// MARK: - Delegates
protocol BusStopDelegate: class {
    func busTookOff(from stop: String)
    func busReachedDestination(destination: String)
}

class Bus {
    var name: String = "Market & 6th  Bus"
    
    weak var delegate: BusStopDelegate?
    
    func takeOff() {
        delegate?.busTookOff(from: "Mission St & 9th St")
    }
    
    func reachedDestination() {
        delegate?.busReachedDestination(destination: "Valencia St & Guerro St")
    }
}

class BusControlCenter: BusStopDelegate {
    
    func busTookOff(from stop: String) {
        print("Bus took off from \(stop)")
    }
    
    func busReachedDestination(destination: String) {
        print("Bus reached destination \(destination)")
    }
}

let bus = Bus()
let controlCenter = BusControlCenter()

//:  ### Setting the bus's delegate to be the bus control center, which conform to the BusStopDelegate
bus.delegate = controlCenter

// Let the bus take off
bus.takeOff()
bus.reachedDestination()

//: Lets take a look at how this looks like in a diagram


//: ![Delegation](delegation.png)


//: [Next Topic](@next)



