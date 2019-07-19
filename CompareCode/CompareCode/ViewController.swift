//
//  ViewController.swift
//  CompareCode
//
//  Created by Jes Yang on 2019/7/19.
//  Copyright © 2019 Jes Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessNum: UITextField!
    var defaultValue = "23224526"
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func check(_ sender: UIButton) {
        if guessNum.text != "" && Int(guessNum.text!) != nil {
        if guessNum.text! == defaultValue {
                result.text = "成功"
            } else {
                result.text = "錯誤"
            }
        } else {
            result.text = "請輸入數值"
        }
    }
}

