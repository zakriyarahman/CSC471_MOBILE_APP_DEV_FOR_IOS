//
//  ViewController.swift
//  ZRahman_TV_Remote_Phone
//
//  Created by Zak on 1/31/16.
//  Copyright © 2016 csc471.depaul.edu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number:Int = 0;
    
    @IBOutlet weak var btn_numberChannelPlus: UIButton!
    @IBOutlet weak var btn_numberChannelMinus: UIButton!
    @IBOutlet weak var btn_numberZero: UIButton!
    @IBOutlet weak var btn_numberOnt: UIButton!
    @IBOutlet weak var btn_numberTwo: UIButton!
    @IBOutlet weak var btn_numberThree: UIButton!
    @IBOutlet weak var btn_numberFour: UIButton!
    @IBOutlet weak var btn_numberFive: UIButton!
    @IBOutlet weak var btn_numberSix: UIButton!
    @IBOutlet weak var btn_numberSeven: UIButton!
    @IBOutlet weak var btn_numberEight: UIButton!
    @IBOutlet weak var btn_numbers: UIButton!
    @IBOutlet weak var sliderVolume: UISlider!
    @IBOutlet weak var lbl_power: UILabel!
    @IBOutlet weak var lbl_speakerVolume: UILabel!
    @IBOutlet weak var lbl_currrentChannel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBAction func btn_number(sender: UIButton) {
        if let _ = sender.currentTitle {
            if(lbl_currrentChannel.text?.characters.count < 2){
                lbl_currrentChannel.text?.appendContentsOf(sender.currentTitle!);
            }
            else{
                lbl_currrentChannel.text?.removeAll()
                lbl_currrentChannel.text    =   sender.currentTitle;
            }
            //number.appendContentsOf(sender.currentTitle!);
//            channelValidator(sender.currentTitle!);
//                lbl_currrentChannel.text?.appendContentsOf(sender.currentTitle!);
        }
//        number.removeAll();
    }
    
    @IBAction func btn_channelPlus(sender: UIButton) {
        if let _ = sender.currentTitle{
            number = Int(lbl_currrentChannel.text!)!
        }
        ++number;
        channelValidator(number);
        lbl_currrentChannel.text = numberPadder();
    }
    
    @IBAction func btn_channelMinus(sender: UIButton) {
        if let _ = sender.currentTitle{
            number = Int(lbl_currrentChannel.text!)!
        }
        --number;
        channelValidator(number);
        lbl_currrentChannel.text = numberPadder();
    }
    
    func channelCharacterLength(let str:String){
        if(str.characters.count >= 2){
            lbl_currrentChannel.text?.removeAll();
//            number = str;
        }
        else{
//            number += str;
        }
    }
    
    @IBAction func swch_power(sender: UISwitch) {
        let enabled = sender.on;
        if(enabled){
            lbl_power.text = "ON";
            sliderVolume.enabled = true;
            segmentControl.enabled = true;
            btn_numberZero.enabled = true;
            btn_numberOnt.enabled = true;
            btn_numberTwo.enabled = true;
            btn_numberThree.enabled = true;
            btn_numberFour.enabled = true;
            btn_numberFive.enabled = true;
            btn_numberSix.enabled = true;
            btn_numberSeven.enabled = true;
            btn_numberEight.enabled = true;
            btn_numbers.enabled = true;
            btn_numberChannelMinus.enabled = true;
            btn_numberChannelPlus.enabled = true;
        }
        else{
            lbl_power.text = "OFF";
            sliderVolume.enabled = false;
            segmentControl.enabled = false;
            btn_numberZero.enabled = false;
            btn_numberOnt.enabled = false;
            btn_numberTwo.enabled = false;
            btn_numberThree.enabled = false;
            btn_numberFour.enabled = false;
            btn_numberFive.enabled = false;
            btn_numberSix.enabled = false;
            btn_numberSeven.enabled = false;
            btn_numberEight.enabled = false;
            btn_numbers.enabled = false;
            btn_numberChannelMinus.enabled = false;
            btn_numberChannelPlus.enabled = false;
        }

    }
    
    @IBAction func sldr_volume(sender: UISlider) {
        var volume = Int(sender.value*100)
        lbl_speakerVolume.text = "\(volume)";
    }
    
    
    func channelValidator(let value:Int){
        if(number > 99){
            number = 0;
        }
        else if(number < 0){
            number = 99
        }
    }
    
    @IBAction func sgmnt_favChannel(sender: UISegmentedControl) {
        let favChannel = sender.titleForSegmentAtIndex(sender.selectedSegmentIndex);
        switch (favChannel!){
            case "ABC":
                lbl_currrentChannel.text = "7";
                break;
            case "NBC":
                lbl_currrentChannel.text = "38";
                break;
            case "CBS":
                lbl_currrentChannel.text = "39";
                break;
            case "FOX":
                lbl_currrentChannel.text = "40";
                break;
        default: break
        }
    }
    
    
    func numberPadder()->String{
        if(number >= 0  && number <= 9){
            return "0" + String(number);
        }
        return String(number);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        number = lbl_currrentChannel.text!
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

