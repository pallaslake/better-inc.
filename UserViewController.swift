//
//  UserViewController.swift
//  better inc.
//
//  Created by Fiona Oh on 8/14/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var tagsLabel: UILabel!
    
    var tArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tagsLabel.font = UIFont(name: "Futura-Medium", size: 40.0)
        tagsLabel.textColor = UIColor(red:0.93, green:0.94, blue:0.95, alpha:1.0)
        tagsLabel.text = "Tags: "
        
        if tArray.count > 0 {
        for number in 0...tArray.count - 1 {
            if number != tArray.count - 1 {
                tagsLabel.text = tagsLabel.text! + tArray[number] + ", "
            } else {
                tagsLabel.text = tagsLabel.text! + tArray[number]
            }
        }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
