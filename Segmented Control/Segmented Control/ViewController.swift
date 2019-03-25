//
//  ViewController.swift
//  Segmented Control
//
//  Created by cuongDeptrai on 3/18/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var Segment: UISegmentedControl!
    @IBAction func SegmentCick(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
             self.view.backgroundColor = #colorLiteral(red: 1, green: 0.6319345328, blue: 0.8986864571, alpha: 1)
        case 1:
            self.view.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
            
        case 2:
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.6415298936, blue: 0.3452512583, alpha: 1)
        default:
            break
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Segment.selectedSegmentIndex == 0 {
            self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
       
    }


}

