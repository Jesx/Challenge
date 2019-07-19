//
//  ViewController.swift
//  fibonacci
//
//  Created by Jes Yang on 2019/7/19.
//  Copyright © 2019 Jes Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fibNum: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var n1: UILabel!
    @IBOutlet weak var n2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculation(_ sender: UIButton) {
        
        if fibNum.text != "" && Int(fibNum.text!) != nil {
            let input = Int(fibNum.text!)
            result.text = String(fib(input!))
            
            if input == 0 {
                n1.text = "無 n-1 值"
                n2.text = "無 n-2 值"
            } else if input == 1 {
                n1.text = String(input! - 1)
                n2.text = "無 n-2 值"
            } else {
                n1.text = String(input! - 1)
                n2.text = String(input! - 2)
            }
        } else {
            result.text = "請輸入正確的數字"
        }
    }
    
    func fib(_ n: Int) -> Int {
        if n == 0 {
            return n
        } else if n == 1 {
            return n
        } else {
            return fib(n-1) + fib(n-2)
        }
    }
    
}

