//
//  ViewController.swift
//  UserSiginExamPle
//
//  Created by cuongDeptrai on 3/17/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//

import UIKit
class SignInViewController: UIViewController {
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var userPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func SignInBuuton(_ sender: UIButton) {
        
        print("Sign in Tapgper Button ")
        
    }
    @IBAction func ResgisterAccout(_ sender: UIButton) {
        
        print("Register account buuton tapped")
        
        let RegisterUserViewController = self.storyboard?.instantiateViewController(withIdentifier: "RegisterUserViewController") as! RegisterUserViewController
        self.present(RegisterUserViewController, animated: true, completion: nil)
        
        
    }
    
}

