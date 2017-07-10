//
//  ViewController.swift
//  ZRahman_ShoppingList
//
//  Created by Zak on 2/7/16.
//  Copyright © 2016 csc471.depaul.edu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_ItemList: UILabel!
    
    @IBOutlet weak var txt_description: UITextField!
    
    @IBOutlet weak var txt_quantity: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBAction func backgroundTouched(sender: UIControl) {
        txt_description.resignFirstResponder();
        txt_quantity.resignFirstResponder();
    }
    
    /**
      *
      * Action upon New List button press
      *
      * @param: UIButton sender
      * @return: null
      *
      **/
    @IBAction func btn_newList(sender: UIButton) {
        clearContentTextField(txt_description);
        clearContentTextField(txt_quantity);
        array.removeAll();
        txt_ItemList.text = "No Item";
    }
    
    /**
     *
     * Action upon New Item button press
     *
     * @param: UIButton sender
     * @return: null
     *
     **/
    @IBAction func btn_newItem(sender: UIButton) {
        clearContentTextField(txt_description);
        clearContentTextField(txt_quantity);
    }
    
    /**
     *
     * Action upon Add button press
     *
     * @param: UIButton sender
     * @return: null
     *
     **/
    @IBAction func btn_add(sender: UIButton) {
        if(txt_description.text == nil || txt_description.text == "")
        && (txt_quantity.text == nil || txt_quantity.text == ""){
            validator();
        }
        else{
            display();
            clearContentTextField(txt_description);
            clearContentTextField(txt_quantity);
        }
    }
    
    /**
     *
     * Generic TextField clear contenter
     *
     * @param: UITextField textField
     * @return: null
     *
     **/
    func clearContentTextField(textField: UITextField){
        textField.text!.removeAll();
    }
    
    func display(){
        array.append(txt_quantity.text! + "x " + txt_description.text! + "\n")
//        print(txt_ItemList.text!)
        if(txt_ItemList.text! == "No item"){
//            print(txt_ItemList.text!);
//            for (key, value) in dictionary.enumerate(){
//                if let item = dictionary[key]
//                {
//                    txt_ItemList.text = "\(key)x \(value)";
//                }
//            }
            txt_ItemList.text = "";
//            txt_ItemList.text = "\(dictionary)";
            txt_ItemList.text?.write(array.last!);
        }
        else{
            for item in array {
                txt_ItemList.text?.appendContentsOf(item);
            }
            print(array);
        }

    }
    
    func validator(){
        let title = "Incomplete"
        let message = "Please complete the Description and Quantity";
        let alertController =
        UIAlertController(
                            title: title,
                            message: message,
                            preferredStyle: .Alert
                         )
        
        let cancelAction =
        UIAlertAction(
                        title: "OK",
                        style: .Cancel,
                        handler: nil
                     )
        alertController.addAction(cancelAction)
        presentViewController(
                                alertController,
                                animated: true,
                                completion: nil
                             )
    }

//    @IBAction func buttonPressed(sender: UIButton) {
////        print(sender.currentTitle);
//        switch (sender.currentTitle!){
//            case  "New List":
//                clearContentTextField(txt_description.text!);
//                clearContentTextField(txt_quantity.text!);
//                clearContentTextField(txt_ItemList.text!);
//            case  "New Item":
//                fallthrough;
//            case "Add":
//                clearContentTextField(txt_description.text!);
//                clearContentTextField(txt_quantity.text!);
//        default:
//            break;
//            
//        }
//        
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var dictionary = [String:Int]();
    var array : [String] = [];


}

