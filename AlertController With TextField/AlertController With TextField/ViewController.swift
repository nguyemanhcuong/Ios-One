//
//  ViewController.swift
//  AlertController With TextField
//
//  Created by cuongDeptrai on 3/16/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.SetUpLogin()
    }
    
    func SetUpLogin() {
        
        let mioAlert =  UIAlertController(title: "Login", message: "last name and passwrod", preferredStyle: .alert)
        mioAlert.addAction(UIAlertAction(title: "save", style: .default, handler: { (alter) in
            let username = mioAlert.textFields![0] as UITextField
            let password = mioAlert.textFields![1] as UITextField
            if username.text != "" , password.text != "" {
                print("Username: \(username.text!) , Password: \(password.text!)")
            }
            else {
                let errorAlert = UIAlertController(title: "Error", message: "check password ", preferredStyle: .alert)
                errorAlert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { (alert) in
                    self.present(mioAlert, animated: true, completion: nil)
                    
                }))
                
                self.present(errorAlert, animated: true, completion: nil)
            }
            
        }))
        mioAlert.addTextField { (textFiled) in
            
            textFiled.placeholder = "Insert user name"
            textFiled.textAlignment = .center
            textFiled.textColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
            
            
        }
        mioAlert.addTextField { (textFiled) in
            
            textFiled.placeholder = "Insert user password"
            
            textFiled.textAlignment = .center
            textFiled.textColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
            
            let color = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            textFiled.layer.borderColor = color.cgColor
            textFiled.layer.borderWidth = 1
           // textFiled.layer.backgroundColor = color as! CGColor
            
            
        }
        self.present(mioAlert, animated: true, completion: nil)
    }
}

