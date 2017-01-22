//
//  FavoritesVC.swift
//  My Quotes
//
//  Created by Timothy Barrett on 1/20/17.
//  Copyright © 2017 Timothy Barrett. All rights reserved.
//

import UIKit

class FavoritesVC: UIViewController {
    
    
    @IBOutlet weak var favoriteImage: UIImageView!
    
    


    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(true)
        
        let myDefaults = UserDefaults.standard
        let indexSaved = myDefaults.integer(forKey: "favorite")
        let imageName = "\(indexSaved)"
        
        let image = UIImage(named: imageName)
        
        favoriteImage.image = image
        
        view.backgroundColor = theme
        
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
