//
//  ViewController.swift
//  Switch
//
//  Created by cuongDeptrai on 3/16/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var Switch: UISwitch!
    @IBOutlet var Lable: UILabel!
    var swichCode: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        swichCode = UISwitch()
        swichCode.frame = CGRect(x: 164, y: 220, width: 49, height: 31)
        swichCode.isOn = true
        swichCode.onTintColor = #colorLiteral(red: 0.2970375263, green: 1, blue: 0.2318178331, alpha: 1)
        swichCode.tintColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        swichCode.thumbTintColor = #colorLiteral(red: 0.9344248723, green: 1, blue: 0.2643673962, alpha: 1)
        swichCode.addTarget(self, action: #selector(methodCode), for: .valueChanged)
        self.view.addSubview(swichCode)
    }
    
    @IBAction func methodCode() {
        if swichCode.isOn {
            Lable.text = "Lable"
        } else {
            Lable.text = ""
        }
    }

    @IBAction func Cick(_ sender: UISwitch) {
        
        if Switch.isOn {
            Lable.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            print(Switch.isOn)
        } else {
            Lable.backgroundColor = #colorLiteral(red: 1, green: 0.6319345328, blue: 0.8986864571, alpha: 1)
            print(Switch.isOn)
        }
    }
    
}

