//
//  ViewController.swift
//  TextView
//
//  Created by cuongDeptrai on 3/15/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet var TextView: UITextView!
    @IBOutlet var textField: UITextField!
    @IBOutlet var Buttom: UIButton!
    var textViewCode: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTextView()
        
    }
    @IBAction func Cick(_ sender: UIButton) {
        if textField.text == "" {
            textField.backgroundColor = #colorLiteral(red: 1, green: 0.6415298936, blue: 0.3452512583, alpha: 1)
            print("I am cuong")
            return
        }
        print("data \(textField.text!)")
        textField.text = ""
    }
    @IBAction func CickTextFiled(_ sender: UITextField) {
        TextView.text = textField.text
    }
    func setupTextView() {
        textViewCode = UITextView()
//        textViewCode.frame = CGRect(x: 16, y: 250, width: 266, height: 100)
        textViewCode.frame.origin.x = 16
        textViewCode.frame.origin.y = 250
        textViewCode.frame.size.width  = 266
        textViewCode.frame.size.height = 100
        textViewCode.backgroundColor = UIColor.gray
        textViewCode.font = UIFont.boldSystemFont(ofSize: 17)
        textViewCode.textColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        textViewCode.textAlignment = NSTextAlignment.justified
        textViewCode.isEditable = true
        textViewCode.isSelectable = true
        textViewCode.allowsEditingTextAttributes = true
        textViewCode.clearsOnInsertion = true
        
        textViewCode.dataDetectorTypes = [.address,.link,.calendarEvent]
        self.view.addSubview(textViewCode)
        
        
       
    }
}

