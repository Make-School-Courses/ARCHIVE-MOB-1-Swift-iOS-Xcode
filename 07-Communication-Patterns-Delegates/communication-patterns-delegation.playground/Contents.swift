//: A UIKit based Playground to present user interface
  
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


class BlueViewController : UIViewController, TapDetectionDelegate {
    
    var tapDelegate: TapDetectionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue
        
        let cicleView = CircleView(
            frame: CGRect(x: 0, y: 0, width: 500, height: 500)
        )
        tapDelegate = self
    }
    
    // TapDetectionDelegate protocol function
    func didTapCircle(at: CGPoint) {
        self.view.backgroundColor = UIColor.red
    }
}

class CircleView: UIView {
    override func draw(_ rect: CGRect) {
        let circleLayer = CAShapeLayer()
        let circlePath = UIBezierPath.init(arcCenter: self.center, radius: self.frame.size.width / 2, startAngle: .pi, endAngle: 3 * .pi, clockwise: true)

        circleLayer.path = circlePath.cgPath
        
        circleLayer.fillColor = UIColor.red.cgColor
        
    }
}
class GreenViewController : UIViewController {
    
    override func loadView() {
        let view = UIView()
        
        let label = UILabel()
        label.text = "Hello World!"
        label.textColor = .white
        
        view.addSubview(label)
        self.view = view
    }
    
}
//: [Next Topic](@next)

PlaygroundPage.current.liveView = BlueViewController()


