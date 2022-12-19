//
//  ViewController.swift
//  Week3-Homework1
//
//  Created by Muhammed Gül on 19.12.2022.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    let secondTexts = SecondViewController()

    let userDefault = UserDefaults.standard
    
    @IBOutlet weak var redLabelText: UILabel!
    @IBOutlet weak var greenLabelText: UILabel!
    @IBOutlet weak var blueLabelText: UILabel!
    @IBOutlet weak var titleOfProjectLabel: UILabel!
    
    @IBOutlet weak var redInputTextLabel: UILabel!
    @IBOutlet weak var greenInputTextLabel: UILabel!
    @IBOutlet weak var blueInputTextLabel: UILabel!
    
    @IBOutlet weak var assignValueButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(handleSendParameters), name: NSNotification.Name("handleSendParametersID"), object: nil)
        
        creatingNotificationCenter()
        
        setupLabelText(label: redInputTextLabel)
        setupLabelText(label: greenInputTextLabel)
        setupLabelText(label: blueInputTextLabel)
        
        setupLabel(label: redLabelText)
        setupLabel(label: blueLabelText)
        setupLabel(label: greenLabelText)
        setupLabel(label: titleOfProjectLabel)
        
        buttonUI(button: assignValueButton)
      
    }

    
    fileprivate func setupLabel(label: UILabel){
        
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.textAlignment = .center
    }
    
    fileprivate func setupLabelText(label: UILabel) {
        label.text = ""
        label.backgroundColor = .white
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
      
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    @objc func handleSendParameters(data:Notification){
        if let userInfo = data.userInfo{
            
            if let red = userInfo["red"] as? String {
                self.redInputTextLabel.text = red
            }
            if let blue = userInfo["blue"] as? String {
                self.blueInputTextLabel.text = blue
            }
            if let green = userInfo["green"] as? String {
                self.greenInputTextLabel.text = green
            }
         }
    }
    
    func creatingNotificationCenter(){
        
      
    }
    
}

