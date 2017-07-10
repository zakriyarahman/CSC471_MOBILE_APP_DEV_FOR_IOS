//
//  FoodDetailViewController.swift
//  ZR_FoodItems
//
//  Created by Zak on 3/1/16.
//  Copyright © 2016 csc471.depaul.edu. All rights reserved.
//

import UIKit

class FoodDetailViewController: UIViewController {

    var food:Food?
    
    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var lbl_description: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        if let f = food {
            lbl_title.text = f.getName()
            lbl_description.text = f.getLongDescription()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
