//
//  ViewController.swift
//  SwitchButton
//
//  Created by Jes Yang on 2019/7/18.
//  Copyright © 2019 Jes Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textLabel.text = "On"
        textLabel.textColor = UIColor.white
        textLabel.backgroundColor = UIColor.black
    }

    @IBAction func switchBotton(_ sender: UISwitch) {
        let bool = sender.isOn
        textLabel.text = bool.labelText()
        textLabel.textColor = bool.foregroundColor()
        textLabel.backgroundColor = bool.backgroundColor()
        super.view.backgroundColor = bool.foregroundColor()
/*----------Old version----------
        if sender.isOn {
            textLabel.text = "On"
            textLabel.textColor = UIColor.white
            textLabel.backgroundColor = UIColor.black
            super.view.backgroundColor = UIColor.white
        } else {
            textLabel.text = "Off"
            textLabel.textColor = UIColor.black
            textLabel.backgroundColor = UIColor.white
            super.view.backgroundColor = UIColor.black
        }
 ------------------------------*/
    }
}

fileprivate extension Bool{
    func labelText() -> String {
        if self {
            return "On"
        } else {
            return "Off"
        }
    }
    
    func foregroundColor() -> UIColor {
        if self {
            return UIColor.white
        } else {
            return UIColor.black
        }
    }
    
    func backgroundColor() -> UIColor {
        if self {
            return UIColor.black
        } else {
            return UIColor.white
        }
    }
}
