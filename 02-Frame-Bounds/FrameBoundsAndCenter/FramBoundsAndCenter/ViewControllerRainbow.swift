//
//  ViewControllerRainbow.swift
//  FramBoundsAndCenter
//
//  Created by Willie Johnson on 5/1/18.
//  Copyright © 2018 Mitchell Hudson. All rights reserved.
//

import UIKit

class ViewControllerRainbow: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    let numberOfView = 14
    let viewSize = CGSize(width: view.bounds.width, height: view.bounds.height / CGFloat(numberOfView))
    for i in 0..<numberOfView {
      let y = CGFloat(i) * viewSize.height
      let r = CGRect(x: 0, y: y, width: viewSize.width, height: viewSize.height)
      let box = UIView(frame: r)
      view.addSubview(box)
      let hue = 1 / CGFloat(numberOfView) * CGFloat(i)
      print(hue)
      box.backgroundColor = UIColor(hue: hue, saturation: 1, brightness: 1, alpha: 1)
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}
