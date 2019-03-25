//
//  ViewController.swift
//  Slider
//
//  Created by cuongDeptrai on 3/16/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var Slider: UISlider!
    @IBOutlet var Lable: UILabel!
    var silerCode:UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupSlider()
    }
    @IBAction func SliderAction(_ sender: UISlider) {
        
//        Lable.text = String(Slider.value)
//        Lable.text = String(round(Slider.value))
        Lable.text = String(format: "%.2f", Slider.value)
        Lable.backgroundColor = UIColor(white: 0.5, alpha: CGFloat(Slider.value))
        
        if Slider.value > 0.7 {
            Lable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        else {
            Lable.textColor = #colorLiteral(red: 1, green: 0.6415298936, blue: 0.3452512583, alpha: 1)
        }
    }
    func setupSlider() {
        silerCode = UISlider()
        silerCode.frame = CGRect(x: 14, y: 200, width: 347, height: 30)
        silerCode.backgroundColor = #colorLiteral(red: 0.9344248723, green: 1, blue: 0.2643673962, alpha: 1)
        silerCode.thumbTintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        silerCode.minimumTrackTintColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        silerCode.minimumTrackTintColor = #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)
        
        silerCode.minimumValue = 5
        silerCode.maximumValue = 25
        silerCode.value = 17
        silerCode.isContinuous = true
        silerCode.addTarget(self, action: #selector(methodSlider), for: .valueChanged)
        self.view.addSubview(silerCode)
        
    }
    
    @objc func methodSlider() {
        Lable.font = UIFont.boldSystemFont(ofSize: CGFloat(silerCode.value))
        
    }
    
    
    
}

