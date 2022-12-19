//
//  SecondViewController.swift
//  Week3-Homework1
//
//  Created by Muhammed Gül on 19.12.2022.
//

import UIKit

class SecondViewController: UIViewController {
    static let shared = SecondViewController()
    
    
    @IBOutlet weak var redSecondTextLabel: UITextField!
    
    @IBOutlet weak var greenSecondTextLabel: UITextField!
    
    @IBOutlet weak var blueSecondTextLabel: UITextField!
    
    
    let userDefaultStore = UserDefaults.standard //userDefault object
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func buttonSendNotificationTapped(_ sender: UIButton) {
        let red = redSecondTextLabel.text!
        let blue = blueSecondTextLabel.text!
        let green = greenSecondTextLabel.text!
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "handleSendParametersID"), object: nil, userInfo: ["red":red, "blue":blue, "green":green])
        _ = navigationController?.popViewController(animated: true)
        
    }
}
