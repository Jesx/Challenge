//
//  ViewController.swift
//  Discount
//
//  Created by Jes Yang on 2019/7/19.
//  Copyright © 2019 Jes Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    //@IBOutlet weak var oriPrice: UITextField!
    
    @IBOutlet weak var oriPrice: UITextField!
    //@IBOutlet weak var textField: UITextField!
    @IBOutlet weak var disPrice: UILabel!
    @IBOutlet weak var sliderValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        oriPrice.delegate = self
        oriPrice.keyboardType = .numberPad
        //oriPrice.keyboardType = .numberPad
    }
    
    func textField(_ oriPrice: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let invalidCharacters = CharacterSet(charactersIn: "0123456789").inverted
        return string.rangeOfCharacter(from: invalidCharacters) == nil
    }
    
    @IBAction func disSlider(_ sender: UISlider) {
        if oriPrice.text != "" {
            let disNum = sender.value
            let oriNum = Float(oriPrice.text!)
            sliderValue.text = String(format: "%.2f",disNum)
            disPrice.text = String(Int(oriNum! * disNum))
        } else {
            disPrice.text = "請填入金額"
        }
    }
}

