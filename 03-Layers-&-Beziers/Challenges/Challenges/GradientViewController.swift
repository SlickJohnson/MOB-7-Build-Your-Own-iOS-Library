//
//  GradientViewController
//  Challenges
//
//  Created by Willie Johnson on 5/3/18.
//  Copyright © 2018 Willie Johnson. All rights reserved.
//

import UIKit

@IBDesignable class GradientViewController: UIViewController {
  @IBInspectable var firstColor: UIColor = .red 
  @IBInspectable var secondColor: UIColor = .orange

  override func viewDidLoad() {
    super.viewDidLoad()
    let graidentLayer = CAGradientLayer()
    graidentLayer.frame = view.bounds
    view.layer.addSublayer(graidentLayer)
    graidentLayer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
    graidentLayer.startPoint = CGPoint(x: 0.5, y: 0)
    graidentLayer.endPoint = CGPoint(x: 0.5, y: 1)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}


