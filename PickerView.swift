//
//  PickerView.swift
//  All The Choices
//
//  Created by Anaya Bussey on 7/16/16.
//  Copyright © 2016 Portals. All rights reserved.
//

import UIKit

class PickerView: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    var choice: Int?
    @IBOutlet weak var myPicker: UIPickerView!
    let pickerData = ["2", "3", "4", "5", "6", "7", "8", "9", "10" ]
    override func viewDidLoad() {
        super.viewDidLoad()
        

        choice = 2
        let defaults = UserDefaults.standard
        defaults.set(choice!, forKey: "numChoices")
        defaults.synchronize()
    

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        }
    //says amount of things in PickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //programs the number of rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return pickerData.count
    }
    //first row of the pickerview
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let number = pickerData[row]
        return "\(number)"
    }
    //what happens when a row is selected
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        choice = row + 2
        print("selected row")
        //saved numChoices
        let defaults = UserDefaults.standard
        defaults.set(choice!, forKey: "numChoices")
        defaults.synchronize()
    }
}
