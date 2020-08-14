//
//  TagsViewController.swift
//  better inc.
//
//  Created by Fiona Oh on 8/13/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class TagsViewController: UIViewController {

    @IBOutlet weak var anxietyButton: UIButton!
    @IBOutlet weak var depressionButton: UIButton!
    @IBOutlet weak var covidButton: UIButton!
    @IBOutlet weak var schoolButton: UIButton!
    @IBOutlet weak var tipsButton: UIButton!
    @IBOutlet weak var friendsButton: UIButton!
    @IBOutlet weak var coloringButton: UIButton!
    @IBOutlet weak var stressReliefButton: UIButton!
    
    var anxietyBool = false
    var depressionBool = false
    var covidBool = false
    var schoolBool = false
    var tipsBool = false
    var friendsBool = false
    var coloringBool = false
    var stressReliefBool = false
    
    var tagArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func buttonPressed(bool : Bool, tagButton : UIButton, tagString : String) {
        
        if bool {
            tagButton.backgroundColor = UIColor(red: 0.05, green: 0.58, blue: 0.58, alpha: 1.00)
            tagArray.append(tagString)
        } else {
            tagButton.backgroundColor = UIColor(white: 1, alpha: 0)
            tagArray.remove(at: tagArray.firstIndex(of: tagString)!)
        }
        
    }
    
    
    @IBAction func anxietyPressed(_ sender: Any) {
        
        anxietyBool = !anxietyBool
        
        buttonPressed(bool : anxietyBool, tagButton : anxietyButton, tagString : "anxiety")
    }
    
    
    @IBAction func depressionPressed(_ sender: Any) {
        depressionBool = !depressionBool
        
        buttonPressed(bool : depressionBool, tagButton : depressionButton, tagString : "depression")
    }
    
    
    @IBAction func covidPressed(_ sender: Any) {
        covidBool = !covidBool
        
        buttonPressed(bool : covidBool, tagButton : covidButton, tagString : "COVID-19")
    }
    
    
    @IBAction func schoolPressed(_ sender: Any) {
        schoolBool = !schoolBool
    
        buttonPressed(bool : schoolBool, tagButton : schoolButton, tagString : "school")
    }
    
    
    @IBAction func tipsPressed(_ sender: Any) {
        tipsBool = !tipsBool
        
        buttonPressed(bool : tipsBool, tagButton : tipsButton, tagString : "tips")
    }
    
    
    @IBAction func friendsPressed(_ sender: Any) {
        friendsBool = !friendsBool
        
        buttonPressed(bool : friendsBool, tagButton : friendsButton, tagString : "friends")
    }
    
    
    @IBAction func coloringPressed(_ sender: Any) {
        coloringBool = !coloringBool
        
        buttonPressed(bool : coloringBool, tagButton : coloringButton, tagString : "coloring")
    }
    
    
    @IBAction func stressReliefButton(_ sender: Any) {
        stressReliefBool = !stressReliefBool
        
        buttonPressed(bool : stressReliefBool, tagButton : stressReliefButton, tagString : "stress relief")
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  let VC = segue.destination as? UserViewController {
            VC.tArray = tagArray
        }
    }
    

}
