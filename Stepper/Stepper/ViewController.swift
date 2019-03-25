//
//  ViewController.swift
//  Stepper
//
//  Created by cuongDeptrai on 3/16/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//
import UIKit
class ViewController: UIViewController {
    @IBOutlet var Label: UILabel!
    @IBOutlet var Steper: UIStepper!
    var steperCode: UIStepper!
    override func viewDidLoad() {
        super.viewDidLoad()
        steperCode = UIStepper()
        steperCode.center = self.view.center
        steperCode.frame.size = CGSize(width: 100, height: 100)
        steperCode.isContinuous = true
        steperCode.autorepeat = true
        steperCode.wraps = false
        steperCode.value = 0
        steperCode.minimumValue = 0
        steperCode.maximumValue = 10
        steperCode.stepValue = 1
        steperCode.addTarget(self, action: #selector(MethodData), for: .valueChanged)
        self.view.addSubview(steperCode)
    }
    @objc func MethodData() {
        Label.alpha = CGFloat(steperCode.value) / 10
    }
    @IBAction func StepAction(_ sender: UIStepper) {
        
        Label.font = UIFont.boldSystemFont(ofSize: CGFloat(Steper.value))
    }
    
}

