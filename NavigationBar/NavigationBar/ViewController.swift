//
//  ViewController.swift
//  NavigationBar
//
//  Created by cuongDeptrai on 3/16/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    // create NavigationBar
    
    var NavigationCode: UINavigationBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        NavigationCode = UINavigationBar()
        NavigationCode.frame = CGRect(x: 0, y: 20, width: self.view.frame.width, height: 70)
        NavigationCode.barStyle = .default
        NavigationCode.tintColor = .white
        NavigationCode.barTintColor = .yellow
        
        
        let item = UINavigationItem()
        item.title = "I am cuong"
        NavigationCode.items = [item]
        
        
        
        
        self.view.addSubview(NavigationCode)
    }
    
    @objc func destraFunc() {
        self.view.backgroundColor = .red
        
    }
}

