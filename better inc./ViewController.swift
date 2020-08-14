//
//  ViewController.swift
//  better inc.
//
//  Created by Apple on 8/12/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var commentField: UITextField!
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var postButton: UIButton!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    
    
    @IBOutlet weak var commentField2: UITextField!
    @IBOutlet weak var commentButton2: UIButton!
    @IBOutlet weak var postButton2: UIButton!
    @IBOutlet weak var commentLabel2: UILabel!
    @IBOutlet weak var usernameLabel2: UILabel!
    
    @IBOutlet weak var commentField3: UITextField!
    @IBOutlet weak var commentButton3: UIButton!
    @IBOutlet weak var postButton3: UIButton!
    @IBOutlet weak var commentLabel3: UILabel!
    @IBOutlet weak var usernameLabel3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func addComment(cField : UITextField, cButton : UIButton, pButton : UIButton) {
           cField.isHidden = false
           cButton.isHidden = true
           pButton.isHidden = false
       }
       
    func postPressed(cField : UITextField, cButton : UIButton, pButton : UIButton, cLabel : UILabel, uLabel : UILabel) {
        cField.isHidden = true
            pButton.isHidden = true
                  
            if cField.text != "" {
                cLabel.text = cField.text
                uLabel.isHidden = false
                  
            } else {
                cButton.isHidden = false
            }
    }
    
    @IBAction func addComment(_ sender: Any) {
        addComment(cField : commentField, cButton : commentButton, pButton : postButton)
    }
    
    @IBAction func postPressed(_ sender: Any) {
        postPressed(cField : commentField, cButton : commentButton, pButton : postButton, cLabel : commentLabel, uLabel : usernameLabel)
    }
    
    
    @IBAction func addComment2(_ sender: Any) {
        addComment(cField : commentField2, cButton : commentButton2, pButton : postButton2)
    }
    
    @IBAction func postPressed2(_ sender: Any) {
        postPressed(cField : commentField2, cButton : commentButton2, pButton : postButton2, cLabel : commentLabel2, uLabel : usernameLabel2)
    }
    
    
    @IBAction func addComment3(_ sender: Any) {
        addComment(cField : commentField3, cButton : commentButton3, pButton : postButton3)
    }
    
    @IBAction func postPressed3(_ sender: Any) {
        postPressed(cField : commentField3, cButton : commentButton3, pButton : postButton3, cLabel : commentLabel3, uLabel : usernameLabel3)
    }
    
    
    
}

