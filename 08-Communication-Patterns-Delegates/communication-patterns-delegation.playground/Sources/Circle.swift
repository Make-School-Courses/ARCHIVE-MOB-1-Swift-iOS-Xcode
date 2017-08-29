import Foundation
import UIKit

class CircleView: UIView {
    override func draw(_ rect: CGRect) {
        let circleLayer = CAShapeLayer()
        let circlePath = UIBezierPath.init(arcCenter: self.center, radius: self.frame.size.width / 2, startAngle: .pi, endAngle: 3 * .pi, clockwise: true)
        
        circleLayer.path = circlePath.cgPath
        
        circleLayer.fillColor = UIColor.red.cgColor
        
    }
}
