//
//  ViewController.swift
//  Activity Indicator
//
//  Created by cuongDeptrai on 3/16/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var ActivityIntor:
    UIActivityIndicatorView!
    @IBOutlet var bottom: UIButton!
    
    var ActivityIntorCode: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setUp
        ActivityIntorCode = UIActivityIndicatorView()
        ActivityIntorCode.frame.size.width = 100
        ActivityIntorCode.frame.size.height = 100
        ActivityIntorCode.center = self.view.center
        ActivityIntorCode.style = .whiteLarge
        ActivityIntorCode.hidesWhenStopped = true
        ActivityIntorCode.color = #colorLiteral(red: 1, green: 0.6319345328, blue: 0.8986864571, alpha: 1)
        ActivityIntorCode.startAnimating()
        
        self.view.addSubview(ActivityIntorCode)
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 7) {
            self.ActivityIntorCode.stopAnimating()
        }
        
    }
    @IBAction func Cick(_ sender: UIButton) {
        if ActivityIntor.isAnimating {
            ActivityIntor.stopAnimating()
            bottom.setTitle("Start", for: .normal)
            ActivityIntor.isHidden = true
        } else {
            ActivityIntor.startAnimating()
            bottom.setTitle("Stop", for: .normal)
            ActivityIntor.isHidden = false
        }
    }
}

