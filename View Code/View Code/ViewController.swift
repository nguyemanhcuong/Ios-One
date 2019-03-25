//
//  ViewController.swift
//  View Code
//
//  Created by cuongDeptrai on 3/16/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var viewCode: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewCode = UIView()
        viewCode.frame = CGRect(x: 20, y: 50, width: 335, height: 130)
        viewCode.backgroundColor = UIColor.red
        viewCode.layer.cornerRadius = 25
        viewCode.clipsToBounds = true
        self.view.addSubview(viewCode)
        var viewTwo = UIView()
        viewTwo.frame.size = CGSize(width: 50, height: 50)
        viewTwo.frame.origin.x = (viewCode.bounds.width / 2) - 25
        viewTwo.frame.origin.y = (viewCode.bounds.height / 2 ) - 25
        viewTwo.layer.cornerRadius = 25
        viewTwo.clipsToBounds = true
        viewTwo.backgroundColor = #colorLiteral(red: 0.9344248723, green: 1, blue: 0.2643673962, alpha: 1)
        self.viewCode.addSubview(viewTwo)
    }
}

