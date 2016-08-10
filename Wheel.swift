//
//  Wheel.swift
//  All The Choices
//
//  Created by Anaya Bussey on 7/19/16.
//  Copyright © 2016 Portals. All rights reserved.
//

import UIKit

class Wheel: UIViewController {

    
    @IBOutlet weak var wheel2: UIImageView!
    @IBOutlet weak var wheel3: UIImageView!
    @IBOutlet weak var wheel4: UIImageView!
    @IBOutlet weak var wheel5: UIImageView!
    @IBOutlet weak var wheel6: UIImageView!
    @IBOutlet weak var wheel7: UIImageView!
    @IBOutlet weak var wheel8: UIImageView!
    @IBOutlet weak var wheel9: UIImageView!
    @IBOutlet weak var wheel10: UIImageView!
    
    var wheels : [UIImageView]?
    
    var numWheels: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numWheels =  UserDefaults.standard.integer(forKey: "numChoices")
       
        wheels = [wheel2, wheel3, wheel4, wheel5, wheel6, wheel7, wheel8, wheel9, wheel10]
        
        
        if numWheels == 2 {
            wheel2.isHidden = false
        }
        if numWheels == 3 {
            wheel3.isHidden = false
        }
        if numWheels == 4 {
            wheel4.isHidden = false
        }
        if numWheels == 5 {
            wheel5.isHidden = false
        }
        if numWheels == 6 {
            wheel6.isHidden = false
        }
        if numWheels == 7 {
            wheel7.isHidden = false
        }
        if numWheels == 8 {
            wheel8.isHidden = false
        }
        if numWheels == 9 {
            wheel9.isHidden = false
        }
        if numWheels == 10 {
            wheel10.isHidden = false
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //programs button to rotate wheels
    @IBAction func Spin(_ sender: UIButton) {
        rotateImage()
        let random = Int(arc4random()) % numWheels + 1
        
        let defaults = UserDefaults.standard
        defaults.set(random, forKey: "randomChoice")
        defaults.synchronize()
        
    }
    
    
    
    
    //rotates the wheels
    func rotateImage(){
        let wheelIndex = numWheels - 2
        let chosenWheel = wheels![wheelIndex]
        
        let diceRoll = CGFloat(arc4random_uniform(7))
        let degree =  0.0174532925 as CGFloat
        let sixthOfCircle : CGFloat = 60
        let rotate = diceRoll * degree * sixthOfCircle
        UIView.animate(withDuration: 0.5, delay: 0.0, options: UIViewAnimationOptions.curveLinear,
        animations: { () -> Void in chosenWheel.transform = chosenWheel.transform.rotate(rotate)
        }, completion: nil)
    }

   }
