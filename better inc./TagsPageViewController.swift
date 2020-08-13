//
//  TagsPageViewController.swift
//  better inc.
//
//  Created by Apple on 8/13/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class TagsPageViewController: UIViewController {
    override func viewDidLoad() {
           super.viewDidLoad()

           // Do any additional setup after loading the view.
       }
    
    @IBAction func savePressed(_ sender: UIButton) {
       let vc = SavedTagsTableViewController()
        vc.tags.append("anxiety")
        navigationController?.pushViewController(vc, animated:true)
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
