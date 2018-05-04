//
//  BezierViewController.swift
//  Challenges
//
//  Created by Willie Johnson on 5/3/18.
//  Copyright © 2018 Willie Johnson. All rights reserved.
//

import UIKit

class BezierViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    let bezier = UIBezierPath()
    // Set starting point.
    bezier.move(to: CGPoint(x: 0, y: view.bounds.midY))
    // Draw 2 connecting lines.
    bezier.addCurve(to: CGPoint(x: view.bounds.midX, y: view.bounds.height * 0.75),
                        controlPoint1: CGPoint(x: view.bounds.width / 4, y: view.bounds.midY),
                        controlPoint2: CGPoint(x: view.bounds.width / 4, y: view.bounds.height * 0.75))
    bezier.addCurve(to: CGPoint(x: view.bounds.maxX, y: view.bounds.midY),
                        controlPoint1: CGPoint(x: view.bounds.width * 0.75, y: view.bounds.height * 0.75),
                        controlPoint2: CGPoint(x: view.bounds.width * 0.75, y: view.bounds.midY))
    // Close shape
    bezier.addLine(to: CGPoint(x: view.bounds.maxX, y: view.bounds.maxY))
    bezier.addLine(to: CGPoint(x: 0, y: view.bounds.maxY))
    bezier.close()
    // Render shape
    let shapeLayer = CAShapeLayer()
    shapeLayer.fillColor = UIColor.brown.cgColor
    shapeLayer.lineWidth = 2
    shapeLayer.frame = view.bounds
    shapeLayer.path = bezier.cgPath
    shapeLayer.opacity = 1
    view.layer.addSublayer(shapeLayer)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}
