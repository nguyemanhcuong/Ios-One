//
//  ViewController.swift
//  DatePicker
//
//  Created by cuongDeptrai on 3/16/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet var lbl1: UILabel!
    @IBOutlet var DatePicker: UIDatePicker!
    @IBOutlet var lbl2: UILabel!
    var datePickerCode: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        datePickerCode = UIDatePicker()
        datePickerCode.frame = CGRect(x: 0, y: 420, width: self.view.bounds.width, height: 160)
        datePickerCode.datePickerMode = UIDatePicker.Mode.time
        datePickerCode.locale = NSLocale(localeIdentifier: "it") as Locale!
        datePickerCode.minuteInterval = 5
        datePickerCode.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        datePickerCode.addTarget(self, action: #selector(methodDate), for: .valueChanged)
        
        self.view.addSubview(datePickerCode)
    }
    
    @IBAction func CickPIcker(_ sender: Any) {
        let dataFromDate = DateFormatter()
        dataFromDate.dateStyle = .medium
        dataFromDate.dateFormat = "E,dd-MM-YYYY"
        
        dataFromDate.locale = NSLocale(localeIdentifier: "it") as Locale!
        let dataString = dataFromDate.string(from: DatePicker.date)
        lbl1.text = dataString
    }
    
    @objc func methodDate() {
        let dataFormata = DateFormatter()
        dataFormata.dateFormat = "HH:mm:ss"
        lbl2.text = dataFormata.string(from: datePickerCode.date)
    }
}

