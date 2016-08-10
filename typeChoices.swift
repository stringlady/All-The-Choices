//
//  typeChoices.swift
//  All The Choices
//
//  Created by Anaya Bussey on 7/18/16.
//  Copyright © 2016 Portals. All rights reserved.
//
import UIKit

class typeChoices: UIViewController {

    var numChoices: Int?
    
    @IBOutlet weak var Choice1: UITextField!
    @IBOutlet weak var Choice2: UITextField!
    @IBOutlet weak var Choice3: UITextField!
    @IBOutlet weak var Choice4: UITextField!
    @IBOutlet weak var Choice5: UITextField!
    @IBOutlet weak var Choice6: UITextField!
    @IBOutlet weak var Choice7: UITextField!
    @IBOutlet weak var Choice8: UITextField!
    @IBOutlet weak var Choice9: UITextField!
    @IBOutlet weak var Choice10: UITextField!
    
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label4: UILabel!
    @IBOutlet weak var Label5: UILabel!
    @IBOutlet weak var Label6: UILabel!
    @IBOutlet weak var Label7: UILabel!
    @IBOutlet weak var Label8: UILabel!
    @IBOutlet weak var Label9: UILabel!
    @IBOutlet weak var Label10: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        numChoices = UserDefaults.standard.object(forKey: "numChoices") as? Int
        
        //These Outlets are never hidden
        Choice1.isHidden = false
        Choice2.isHidden = false
        Label1.isHidden = false
        Label2.isHidden = false
        
        
        if numChoices >= 3 {
            Choice3.isHidden = false
            Label3.isHidden = false
        }
        
        if numChoices >= 4 {
            Choice4.isHidden = false
            Label4.isHidden = false
        }
        
        if numChoices >= 5 {
            Choice5.isHidden = false
            Label5.isHidden = false
        }
        
        if numChoices >= 6 {
            Choice6.isHidden = false
            Label6.isHidden = false
        }
        
        if numChoices >= 7 {
            Choice7.isHidden = false
            Label7.isHidden = false
        }
        
        if numChoices >= 8 {
            Choice8.isHidden = false
            Label8.isHidden = false
        }
        
        if numChoices >= 9 {
            Choice9.isHidden = false
            Label9.isHidden = false
        }
        if numChoices == 10 {
            Choice10.isHidden = false
            Label10.isHidden = false
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // saved user's choices
    @IBAction func SaveAnswers(_ sender: UIButton) {

        let defaults = UserDefaults.standard
        
        defaults.set(Choice1.text, forKey: "Answer1")
        defaults.set(Choice2.text, forKey: "Answer2")
        
        if numChoices >= 3 {
            defaults.set(Choice3.text, forKey: "Answer3")
        }
        if numChoices >= 4 {
            defaults.set(Choice4.text, forKey: "Answer4")
        }
        
        if numChoices >= 5 {
            defaults.set(Choice5.text, forKey: "Answer5")
        }
        
        if numChoices >= 6 {
            defaults.set(Choice6.text, forKey: "Answer6")
        }
        
        if numChoices >= 7 {
            defaults.set(Choice7.text, forKey: "Answer7")
        }
        
        if numChoices >= 8 {
            defaults.set(Choice8.text, forKey: "Answer8")
        }
        
        if numChoices >= 9 {
            defaults.set(Choice9.text, forKey: "Answer9")
        }
        
        if numChoices == 10 {
            defaults.set(Choice10.text, forKey: "Answer10")
        }
        
        
        
        defaults.synchronize()
        
    }

 

}
