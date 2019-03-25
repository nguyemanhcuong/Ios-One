//
//  ViewController.swift
//  AppBasic
//
//  Created by cuongDeptrai on 3/15/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.

import UIKit
class ViewController: UIViewController {
    @IBOutlet var Labletext: UILabel!
    
    // create lable
    
    var secondLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Labletext.text  = "I am cuong"
        
        secondLable = UILabel()
        
        secondLable.frame = CGRect(x: 100, y: 300, width: 200, height: 200)
        secondLable.text = "Second Label"
        secondLable.font = UIFont(name: "HelveticaNeue-Bold", size: 17)
        secondLable.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        secondLable.backgroundColor = UIColor(red: 151/255, green: 165/255, blue: 55/255, alpha: 1)
        secondLable.shadowColor = #colorLiteral(red: 1, green: 0.6415298936, blue: 0.3452512583, alpha: 1)
        secondLable.isEnabled = true
        secondLable.numberOfLines = 1
        
        secondLable.textAlignment = .center
        
        self.view.addSubview(secondLable)
       
    }
}

