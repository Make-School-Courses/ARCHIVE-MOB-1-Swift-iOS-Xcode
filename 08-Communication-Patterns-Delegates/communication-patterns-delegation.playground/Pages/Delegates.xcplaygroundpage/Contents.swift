import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

/*:
 # Delegation
 
 Delegation is one of many communication patterns used in iOS to distribute information.
 Delegation is one-to-one, which means that only two participants can engage in delegation
 */

protocol TapDetectionDelegate: class {
    func didTapCircle(at: CGPoint)
}

/*:
We constrain the protocol to classes because we are only going to use this protocol on classes
 
 When creating a delegate, we only want a blueprint of the contract; functions that describe what information is being passed from the delegate
*/

//: First - Two view controllers color change
//: Second -
import SpriteKit
let frame = CGRect(x: 0, y: 0, width: 600, height: 300)
let midPoint = CGPoint(x: frame.midX, y: frame.midY)
var scene = SKScene(size: frame.size)

let nyanCat = SKSpriteNode(imageNamed: "Nyancat")
nyanCat.position = midPoint

nyanCat.physicsBody?.affectedByGravity = true

//nyanCat.setScale(8.0)
scene.addChild(nyanCat)
let view = SKView(frame: frame)
view.presentScene(scene)


PlaygroundPage.current.liveView = view



//: [Next Topic](@next)

//PlaygroundPage.current.liveView = BlueViewController()


