//
//  ViewController.swift
//  PickerView
//
//  Created by cuongDeptrai on 3/16/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//

import UIKit
class ViewController: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource{
    var cityArray = ["a","b","c","d","e","f"]
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        LableTest.text = cityArray[row]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return cityArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cityArray[row]
    }
    @IBOutlet var PickerView: UIPickerView!
    @IBOutlet var LableTest: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

