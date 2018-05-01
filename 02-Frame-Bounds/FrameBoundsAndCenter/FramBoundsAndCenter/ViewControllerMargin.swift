//
//  ViewControllerMargin.swift
//  FramBoundsAndCenter
//
//  Created by Willie Johnson on 5/1/18.
//  Copyright © 2018 Mitchell Hudson. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerMargin: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    let innerView = UIView(frame: view.frame.insetBy(dx: 20, dy: 20))
    innerView.backgroundColor = .red
    view.addSubview(innerView)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}
