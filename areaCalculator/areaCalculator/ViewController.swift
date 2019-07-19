//
//  ViewController.swift
//  areaCalculator
//
//  Created by Jes Yang on 2019/7/19.
//  Copyright © 2019 Jes Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLine: UITextField!
    @IBOutlet weak var baseLine: UITextField!
    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var area: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func areaCal(_ sender: UIButton) {
        
        if (Int(topLine.text!) != nil && Int(baseLine.text!) != nil && Int(height.text!) != nil) && (Int(topLine.text!)! > 0 && Int(baseLine.text!)! > 0 && Int(height.text!)! > 0) {
            let t = Double(topLine.text!)
            let b = Double(baseLine.text!)
            let h = Double(height.text!)
            let A = (t! + b!) * h! / 2
            
            area.text = String(A)
            
        } else {
            area.text = "請輸入正確的數字"
        }
    }
}

