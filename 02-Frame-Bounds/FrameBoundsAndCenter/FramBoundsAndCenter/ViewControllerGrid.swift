//
//  ViewController.swift
//  FramBoundsAndCenter
//
//  Created by mitchell hudson on 1/23/17.
//  Copyright © 2017 Mitchell Hudson. All rights reserved.
//

import UIKit

class ViewControllerGrid: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let gridSize = CGSize(width: 8, height: 8)
        let w = view.bounds.width / gridSize.width
        let h = view.bounds.height / gridSize.height / 2
        let totalSquares = Int(w * h)
        for i in 0...totalSquares {
            let x = CGFloat(i % 9) * w
            let y = CGFloat(i / 9) * h
            let r = CGRect(x: x, y: y, width: w, height: w)
            let box = UIView(frame: r)
            view.addSubview(box)
            
            let color: UIColor = i % 2 == 0 ? .white : .black
            
            box.backgroundColor = color
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

