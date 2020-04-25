//
//  ViewController.swift
//  Prime
//
//  Created by 大塚周 on 2020/04/24.
//  Copyright © 2020 大塚周. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var inputNumberTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        inputNumberTextField.delegate = self
        super.viewDidLoad()
    }
    
    @objc func prime() {
        print(inputNumberTextField)
        print("test")
        let convertNumber = Int(inputNumberTextField.text!)
        var sqrtValue = sqrt(Double(convertNumber!))
        var floorValue = floor(sqrtValue)
        var IntValue = Int(floorValue)
        for i in 2..<IntValue {
            
            if convertNumber! % i == 0 {
                print("素数じゃない")
                outputLabel.text = "\(inputNumberTextField.text!)は素数じゃない"
                outputLabel.textColor = UIColor.white
                return
            }
        }
        outputLabel.text = "\(inputNumberTextField.text!)は素数"
        return
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textfieldEndEditing")
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesbegan")
        view.endEditing(true)
        prime()
    }
}

