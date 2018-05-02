//
//  ViewControllerConcentric.swift
//  FramBoundsAndCenter
//
//  Created by Willie Johnson on 5/1/18.
//  Copyright © 2018 Mitchell Hudson. All rights reserved.
//

import UIKit

class ViewControllerConcentric: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .red
    let numberOfViews = 14
    for i in stride(from: CGFloat(numberOfViews), to: 0.0, by: -1) {
      let r = view.bounds.insetBy(dx: CGFloat(10 * i), dy: CGFloat(10 * i))
      let box = UIView(frame: r)
      view.insertSubview(box, at: 0)
      box.backgroundColor = UIColor(hue: 1, saturation: saturation, brightness: 1, alpha: 1)
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
}
