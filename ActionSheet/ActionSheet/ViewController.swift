//
//  ViewController.swift
//  ActionSheet
//
//  Created by cuongDeptrai on 3/16/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Cick(_ sender: UIButton) {
        let alert = UIAlertController(title: "Hi", message: "I am cuong", preferredStyle: .actionSheet)
        // action1act
        let action1 = UIAlertAction(title: "insert", style: .default) { (action) in
            print("ok")
        }
        let action2 = UIAlertAction(title: "deleted ", style: .default) { (action) in
            print("cancle")
        }
        alert.addAction(action1)
        alert.addAction(action2)
        self.present(alert, animated: true, completion: nil)
    }
    
}

