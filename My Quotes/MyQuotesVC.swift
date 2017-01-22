//
//  MyQuotesVC.swift
//  My Quotes
//
//  Created by Timothy Barrett on 1/20/17.
//  Copyright © 2017 Timothy Barrett. All rights reserved.
//

import UIKit

var theme = UIColor.black

class MyQuotesVC: UIViewController {
    
    @IBOutlet weak var savedLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var favoritesButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var quotesArray = [String]()
    var arrayIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        for i in 0..<10 {
            
            quotesArray.append(String(i))
        }
        
    }

    
    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(true)
        savedLabel.text = ""
        view.backgroundColor = theme
    }
    

    @IBAction func backButtonTapped(_ sender: Any) {
        
        savedLabel.text = ""
        
        if arrayIndex > 0 {
            
            arrayIndex -= 1
            
            let index = quotesArray[arrayIndex]
            let image = UIImage(named: index)
            imageView.image = image
            
            nextButton.isEnabled = true
            
        } else {
            
            backButton.isEnabled = false
            
        }
        
    }
    
    @IBAction func favoriteButtonTapped(_ sender: Any) {
       
        let savingDefaults = UserDefaults.standard

        savingDefaults.set(arrayIndex, forKey: "favorite")
        
        savedLabel.text = "Saved!"
        
    }
    

    @IBAction func nextButtonTapped(_ sender: Any) {
        
        savedLabel.text = ""
        
        if arrayIndex < quotesArray.count - 1 {
        
            arrayIndex += 1
        
            let index = quotesArray[arrayIndex]
            let image = UIImage(named: index)
            imageView.image = image
            
            backButton.isEnabled = true
            
        } else {
            
            nextButton.isEnabled = false
            
        }
        
    }
    
    
}

