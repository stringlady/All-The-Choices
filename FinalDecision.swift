//
//  FinalDecision.swift
//  All The Choices
//
//  Created by Anaya Bussey on 7/19/16.
//  Copyright © 2016 Portals. All rights reserved.
//

import UIKit

class FinalDecision: UIViewController {
    
    @IBOutlet weak var FinalChoice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let theChoice =  UserDefaults.standard.integer(forKey: "randomChoice")
        //Retrieve random number
        // Retrieve text according to that number
        // set label
        if theChoice == 1 {
            let answer = UserDefaults.standard.object(forKey: "Answer1") as! String
            FinalChoice.text = answer
            
        }
        
        if theChoice == 2 {
            let answer = UserDefaults.standard.object(forKey: "Answer2") as! String
            FinalChoice.text = answer
            
        }
        if theChoice == 3 {
            let answer = UserDefaults.standard.object(forKey: "Answer3") as! String
            FinalChoice.text = answer
            
        }
        if theChoice == 4 {
            let answer = UserDefaults.standard.object(forKey: "Answer4") as! String
            FinalChoice.text = answer
        }
        if theChoice == 5 {
            let answer = UserDefaults.standard.object(forKey: "Answer5") as! String
            FinalChoice.text = answer
            
        }
        if theChoice == 6 {
            let answer = UserDefaults.standard.object(forKey: "Answer6") as! String
            FinalChoice.text = answer
            
        }
        if theChoice == 7 {
            let answer = UserDefaults.standard.object(forKey: "Answer7") as! String
            FinalChoice.text = answer
            
        }
        if theChoice == 8 {
            let answer = UserDefaults.standard.object(forKey: "Answer8") as! String
            FinalChoice.text = answer
            
        }
        if theChoice == 9 {
            let answer = UserDefaults.standard.object(forKey: "Answer9") as! String
            FinalChoice.text = answer
            
        }
        
        if theChoice == 10 {
            let answer = UserDefaults.standard.object(forKey: "Answer10") as! String
            FinalChoice.text = answer
            
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
