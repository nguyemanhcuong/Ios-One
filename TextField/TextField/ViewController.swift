//
//  ViewController.swift
//  TextField
//
//  Created by cuongDeptrai on 3/15/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//

import UIKit
class ViewController: UIViewController , UITextFieldDelegate{
    @IBOutlet var label02: UILabel!
    @IBOutlet var labelText: UILabel!
    @IBOutlet var TextFiled: UITextField!
    var textField02: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // create textFiled
        textField02 = UITextField()
        textField02.frame = CGRect(x: 16, y: 315, width: 343, height: 50)
        textField02.backgroundColor = UIColor(white: 0.75, alpha: 0.75)
        textField02.text = ""
        textField02.placeholder = "code textFiled"
        textField02.font = UIFont.systemFont(ofSize: 17)
        textField02.minimumFontSize = 14
        
        textField02.clearButtonMode = .always
        textField02.addTarget(self, action: #selector(methodText(_:)), for: UIControl.Event.editingChanged)
        self.view.addSubview(textField02)
        
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
    @IBAction func methodText(_ sender: UITextField) {
        label02.text = textField02.text
        
    }
    // Editing changed
    
    @IBAction func TextFiled_Changle(_ sender: UITextField) {
        labelText.text = TextFiled.text
    }
    
    
    @IBAction func Cick(_ sender: UIButton) {
        
    }
    
    
}

