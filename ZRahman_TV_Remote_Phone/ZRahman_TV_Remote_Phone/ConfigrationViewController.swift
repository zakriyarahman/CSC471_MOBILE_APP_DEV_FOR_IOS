//
//  ConfigrationViewController.swift
//  ZRahman_TV_Remote_Phone
//
//  Created by Zak on 2/24/16.
//  Copyright © 2016 csc471.depaul.edu. All rights reserved.
//

import UIKit

class ConfigrationViewController: UIViewController {
    
    var favChannel: ConfigurationManager!
    var favChannelLabel: String = "";
    var favChannelSelected: Int = 0;
    
    @IBOutlet weak var lbl_channel: UILabel!
    @IBOutlet weak var txtFld_label: UITextField!
    @IBOutlet weak var segmentedBtn_outlet: UISegmentedControl!
    @IBOutlet weak var stpprChannel: UIStepper!
    
    @IBAction func sgmtd_button(sender: UISegmentedControl) {
        let favChannelIn = sender.selectedSegmentIndex
        switch (favChannelIn) {
        case 0:
            favChannel = favChannel1
        case 1:
            favChannel = favChannel2
        case 2:
            favChannel = favChannel3
        case 3:
            favChannel = favChannel4
        default:
            favChannel = favChannel1
        }
    }
    
    @IBAction func stp_channel(sender: UIStepper) {
        sender.wraps = true
        sender.minimumValue = 1
        sender.maximumValue = 99
        lbl_channel.text = String(Int(sender.value))
    }
    
    @IBAction func btn_save(sender: UIButton) {
        if (txtFld_label.text!.characters.count < 1 || txtFld_label.text!.characters.count > 4)  {
            let alertBox = UIAlertController(title: "Warning", message: "Label cannot have more than 4 characters", preferredStyle: UIAlertControllerStyle.Alert)
            let actionDismiss = UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil)
            alertBox.addAction(actionDismiss)
            self.presentViewController(alertBox, animated: true, completion: nil)
            reset()
            
        }
        else{
            switch (segmentedBtn_outlet.selectedSegmentIndex){
            case 0:
                favChannel1.setChannelNumber(Int(lbl_channel.text!)!)
                favChannel1.setChannelLabel(txtFld_label.text!)
                break
            case 1:
                favChannel2.setChannelNumber(Int(lbl_channel.text!)!)
                favChannel2.setChannelLabel(txtFld_label.text!)
                break
            case 2:
                favChannel3.setChannelNumber(Int(lbl_channel.text!)!)
                favChannel3.setChannelLabel(txtFld_label.text!)
                break
            case 3:
                favChannel4.setChannelNumber(Int(lbl_channel.text!)!)
                favChannel4.setChannelLabel(txtFld_label.text!)
                break;
            default: break
            }
        }

    }
    
    @IBAction func btn_cancel(sender: UIButton) {
        reset()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func reset() {
        txtFld_label.text = ""
        stpprChannel.value = stpprChannel.minimumValue
        lbl_channel.text = "1"
        segmentedBtn_outlet.selectedSegmentIndex = 0
    }

}
