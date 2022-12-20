//
//  SecondViewController.swift
//  HW1(Closures)
//
//  Created by Muhammed Gül on 20.12.2022.
//

import UIKit

typealias text = ([String]) -> ()

class SecondViewController : UIViewController {
    
    let setupUI = SetupCustomUILabels()
    
    var clousure : text!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var redTextFiled: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    @IBOutlet weak var buttonCompleteUI: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI.setupUIView(UIview: label1, 15)
        setupUI.setupUIView(UIview: label2, 15)
        setupUI.setupUIView(UIview: label3, 15)
        setupUI.setupUIView(UIview: redTextFiled, 15)
        setupUI.setupUIView(UIview: greenTextField, 15)
        setupUI.setupUIView(UIview: blueTextField, 15)
        setupUI.setupUIView(UIview: buttonCompleteUI, 30)
        
    }
    
    @IBAction func buttonCompleteClicked(_ sender: UIButton) {
        guard let textRed = redTextFiled.text else {return}
        guard let textGreen = greenTextField.text else {return}
        guard let textBlue = blueTextField.text else {return}
        
        let RGB : [String] = [textRed, textGreen, textBlue]
                    clousure(RGB)
        
        navigationController?.popViewController(animated: true)
    }
}
