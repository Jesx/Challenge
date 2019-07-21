//
//  ViewController.swift
//  CompareCode
//
//  Created by Jes Yang on 2019/7/19.
//  Copyright © 2019 Jes Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var guessNum: UITextField!
    var defaultValue = "23224526"
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        guessNum.delegate = self
        guessNum.keyboardType = .numberPad
    }
    
    func textField(_ guessNum: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let invalidCharacters = CharacterSet(charactersIn: "0123456789").inverted
        return string.rangeOfCharacter(from: invalidCharacters) == nil
    }
    
    @IBAction func compareCode(_ sender: UITextField) {
        if guessNum.text != "" && Int(guessNum.text!) != nil {
            if guessNum.text!.count == defaultValue.count && guessNum.text! == defaultValue {
                result.text = "成功"
            } else if guessNum.text!.count == defaultValue.count && guessNum.text! != defaultValue {
                result.text = "錯誤"
            }
        } else {
            result.text = "請輸入正確位數"
        }

    }

}

