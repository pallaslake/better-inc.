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
