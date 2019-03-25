//
//  ViewController.swift
//  AlertController
//
//  Created by cuongDeptrai on 3/16/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet var Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func Cick(_ sender: UIButton) {
        let Alert = UIAlertController(title: "Alert I am cuong", message: "hello ", preferredStyle: .alert)
//        self.present(Alert, animated: true, completion: nil)
        
        self.present(Alert, animated: true) {
            self.view.backgroundColor = #colorLiteral(red: 0.9344248723, green: 1, blue: 0.2643673962, alpha: 1)
            
        }
        let actionOk = UIAlertAction(title: "OK", style: .default) { (action) in
            let test = action.title
            self.Label.text = test
        }
        let cancle = UIAlertAction(title: "Cancle", style: .cancel, handler: nil)
        Alert.addAction(cancle)
        Alert.addAction(actionOk)
    }
}

