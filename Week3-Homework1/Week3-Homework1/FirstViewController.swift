//
//  ViewController.swift
//  Week3-Homework1
//
//  Created by Muhammed Gül on 19.12.2022.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var redLabelText: UILabel!
    @IBOutlet weak var greenLabelText: UILabel!
    @IBOutlet weak var blueLabelText: UILabel!
    
    @IBOutlet weak var redInputTextLabel: UILabel!
    @IBOutlet weak var greenInputTextLabel: UILabel!
    @IBOutlet weak var blueInputTextLabel: UILabel!
    
    @IBOutlet weak var assignValueButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupLabelText(label: redInputTextLabel)
        setupLabelText(label: greenInputTextLabel)
        setupLabelText(label: blueInputTextLabel)
        
        setupLabel(label: redLabelText)
        setupLabel(label: blueLabelText)
        setupLabel(label: greenLabelText)
        
        buttonUI(button: assignValueButton)
    }

    
    fileprivate func setupLabel(label: UILabel){
        
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.textAlignment = .center
    }
    
    fileprivate func setupLabelText(label: UILabel) {
        label.text = "Please enter your value at the second page"
        label.backgroundColor = .systemGray6
        
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
    }
    
    fileprivate func buttonUI(button: UIButton){
        button.layer.cornerRadius = 20
        button.titleLabel?.textColor = .black
        button.backgroundColor = .systemGray4

        
    }
    
    @IBAction func segueButtonClicked(_ sender: UIButton) {
        assignValueButton.layer.masksToBounds = true
        assignValueButton.layer.cornerRadius = 5
    
    }
    
}

