//
//  ViewController.swift
//  ZRahman.calculator
//
//  Created by Zak on 1/25/16.
//  Copyright © 2016 csc471.depaul.edu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Initializing some holder variables
    var result: Int = 0;
    var number: String = "";
    var arrInts = [(Int)]();
    
    // Label Initializer
    @IBOutlet weak var lbl_calculationScreen: UILabel!
    
    //  Number Button initializer and listener
    @IBAction func btn_clear(sender: UIButton) {
        result = 0;
        lbl_calculationScreen.text?.removeAll();
        number.removeAll();
    }
    @IBAction func btn_number(sender: UIButton) {
        if let _ = sender.currentTitle {
        //number.appendContentsOf(sender.currentTitle!);
            number += sender.currentTitle!;
        print(sender.currentTitle)
        lbl_calculationScreen.text = number;
        }
    }
    
    //  Plus Button initializer and listener
    @IBAction func btn_plus(sender: UIButton) {
        arrInts.append(Int(lbl_calculationScreen.text!)!);
        lbl_calculationScreen.text?.removeAll();
        number.removeAll();
    }
    
    //  Equals Button initializer and listener
    @IBAction func btn_equals(sender: UIButton) {
        if(lbl_calculationScreen.text != nil){
            arrInts.append(Int(lbl_calculationScreen.text!)!);
        }
        add()
        lbl_calculationScreen.text  =   String(result);
        result = 0;
    }
    
    //  Generic add function for Collection Integer type
    func add(){
        for num in arrInts{
            result += num;
        }
        arrInts.removeAll();
    }
    
    func outOfBounds(foo: Int)->Bool{
        if(foo > Int.max){
            return false;
        }
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

