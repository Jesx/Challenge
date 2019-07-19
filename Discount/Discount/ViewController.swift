//
//  ViewController.swift
//  Discount
//
//  Created by Jes Yang on 2019/7/19.
//  Copyright © 2019 Jes Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var oriPrice: UITextField!
    @IBOutlet weak var disPrice: UILabel!
    @IBOutlet weak var sliderValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func disSlider(_ sender: UISlider) {
        if oriPrice.text != "" && Float(oriPrice.text!) != nil {
            let disNum = sender.value
            let oriNum = Float(oriPrice.text!)
            sliderValue.text = String(format: "%.2f",disNum)
            disPrice.text = String(Int(oriNum! * disNum))
        } else {
            disPrice.text = "請填入金額"
        }
    }
}

