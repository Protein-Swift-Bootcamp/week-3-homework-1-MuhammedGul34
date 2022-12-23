//
//  Helpers.swift
//  Week3-Homework1
//
//  Created by Muhammed Gül on 20.12.2022.
//

import UIKit

class Helpers {
    func setupLabel(label: UILabel){
        
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.textAlignment = .center
    }
    
    
    func setupLabelText(label: UILabel) {
          label.text = ""
          label.backgroundColor = .white
          label.layer.masksToBounds = true
          label.layer.cornerRadius = 5
          label.clipsToBounds = true
      }
    
    
      
    func buttonUI(button: UIButton){
          button.layer.cornerRadius = 20
          button.titleLabel?.textColor = .black
          button.backgroundColor = .systemGray4
      }
      
}
