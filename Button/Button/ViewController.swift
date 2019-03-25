//
//  ViewController.swift
//  Button
//
//  Created by cuongDeptrai on 3/15/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet var LabelText: UILabel!
    @IBOutlet var bottom: UIButton!
    var secondButtom: UIButton!
    override func viewDidLoad() {
        
        // create second buttom
        secondButtom = UIButton(type: UIButton.ButtonType.custom)
        secondButtom.frame = CGRect(x: 35, y: 426, width: 75, height: 75)
        secondButtom.center.x = self.view.center.x
        secondButtom.center.y = self.view.center.y
        secondButtom.setTitle("Second bottom", for: UIControl.State.normal)
        secondButtom.titleLabel?.font = UIFont(name: "Chalkduster", size: 17)
        secondButtom.setTitleColor(UIColor.black, for: .normal)
        
        let round = UIImage(named: "help")
        secondButtom.setImage(round, for: .normal)
        
        secondButtom.backgroundColor = #colorLiteral(red: 0.9344248723, green: 1, blue: 0.2643673962, alpha: 1)
        self.view.addSubview(secondButtom)
        
        secondButtom.addTarget(self, action: #selector(secondBottomClick(_:)), for: .touchUpInside)
        
    
        super.viewDidLoad()
    }
    @IBAction func Cick(_ sender: UIButton) {
        LabelText.text = "Bottom inslde"
        bottom.isEnabled = true
    }
    
    @objc func secondBottomClick(_ button: UIButton ) {
        LabelText.text = "second cuong"
        secondButtom.setTitleColor(UIColor.darkGray, for: .normal)
    }
    
    
}

