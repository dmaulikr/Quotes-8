//
//  SettingsVC.swift
//  My Quotes
//
//  Created by Timothy Barrett on 1/20/17.
//  Copyright © 2017 Timothy Barrett. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {
    
    
    @IBOutlet weak var imageBorder: UISwitch!
    @IBOutlet weak var themeSegment: UISegmentedControl!
    @IBOutlet var settingLabels: [UILabel]!
    @IBOutlet weak var favoriteStepper: UIStepper!
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        
        view.backgroundColor = theme
        
        let themeValue = defaults.integer(forKey: "theme")
        if themeValue == 1 {
           
            changeTheme(color: .white, background: .black)
            
        } else {
            
            changeTheme(color: .black, background: .white)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func themeSegmentTapped(_ sender: Any) {
        
        let index = themeSegment.selectedSegmentIndex
        defaults.set(index, forKey: "theme")
        
        switch index {
        case 0:
            changeTheme(color: .white, background: .black)
           
        case 1:
            changeTheme(color: .black, background: .white)
            
        default:
            break
            
        }
         view.backgroundColor = theme
    }
    
    
    @IBAction func borderSwitchTapped(_ sender: Any) {
        
    }
    
    func changeTheme(color: UIColor, background: UIColor) {
        
        for label in settingLabels {
            
            label.textColor = color
        }
        themeSegment.tintColor = color
        imageBorder.onTintColor = color
        favoriteStepper.tintColor = color
        
        theme = background
    }
    

}
