//
//  ViewController.swift
//  HW1(Closures)
//
//  Created by Muhammed Gül on 20.12.2022.
//

import UIKit

class ViewController: UIViewController {

    let setUpUI = SetupCustomUILabels()
    let SecondVC = SecondViewController()
    
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var buttonUI: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI.setupUIView(UIview: label1, 15)
        setUpUI.setupUIView(UIview: label2, 15)
        setUpUI.setupUIView(UIview: label3, 15)
        setUpUI.setupUIView(UIview: redLabel, 15)
        setUpUI.setupUIView(UIview: greenLabel, 15)
        setUpUI.setupUIView(UIview: blueLabel, 15)
        setUpUI.setupUIView(UIview: buttonUI, 30)
        
    }

    @IBAction func buttonAssignClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        SecondVC.closure = { text in
            
        }
    }
    
}

