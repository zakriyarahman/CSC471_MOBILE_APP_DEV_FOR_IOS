//
//  DVRViewController.swift
//  ZRahman_TV_Remote_Phone
//
//  Created by Zak on 2/15/16.
//  Copyright © 2016 csc471.depaul.edu. All rights reserved.
//

import UIKit

class DVRViewController: UIViewController {
    
    @IBOutlet weak var lbl_state: UILabel!
    @IBOutlet weak var lbl_dvrPower: UILabel!
    @IBOutlet weak var btn_outletPlay: UIButton!
    @IBOutlet weak var btn_outletStop: UIButton!
    @IBOutlet weak var btn_outletPause: UIButton!
    @IBOutlet weak var btn_outletForward: UIButton!
    @IBOutlet weak var btn_outletRewind: UIButton!
    @IBOutlet weak var btn_outletRecord: UIButton!
    
    
    
    enum power : String{
        case on = "ON"
        case off = "OFF"
    }
    
    enum states : String {
        case stopped = "Stopped"
        case play = "Play"
        case pause = "Pause"
        case rewind = "Fast Rewinding"
        case forward = "Fast Forwarding"
        case record = "Recording"
    }
    
    func forceStateAssign (given: String){
        lbl_state.text = states.stopped.rawValue;
        lbl_state.text = given
    }
    
    func messenger (sender: UIButton, state: states.RawValue){
        let title = "Incorrect action";
        let message  = "Cannot \(sender.currentTitle!) while \(lbl_state.text!)";
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .Default, handler: nil)
        let forceAction = UIAlertAction(title: "Force", style: .Destructive, handler: {(action:UIAlertAction) in
            self.forceStateAssign(state)
        });
        alertController.addAction(cancelAction);
        alertController.addAction(forceAction);
        presentViewController(alertController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btn_play(sender: UIButton) {
        if(lbl_state.text != states.record.rawValue){
            lbl_state.text = states.play.rawValue   
        }
        else{
            messenger(sender, state: states.play.rawValue);

        }
    }

    @IBAction func btn_stop(sender: UIButton) {
        lbl_state.text = states.stopped.rawValue
    }
    
    
    @IBAction func btn_pause(sender: UIButton) {
        if( lbl_state.text == states.play.rawValue
            && lbl_state.text != states.record.rawValue){
            lbl_state.text = states.pause.rawValue
        }
        else{
            messenger(sender, state: states.pause.rawValue);
            
        }
    }
    
    
    @IBAction func btn_fastForward(sender: UIButton) {
        if( lbl_state.text == states.play.rawValue
            && lbl_state.text != states.record.rawValue){
            lbl_state.text = states.forward.rawValue
        }
        else{
            messenger(sender, state: states.forward.rawValue);
            
        }
    }
    
    
    @IBAction func btn_fastRewind(sender: UIButton) {
        if(lbl_state.text == states.play.rawValue
            && lbl_state.text != states.record.rawValue){
            lbl_state.text = states.rewind.rawValue
        }
        else{
            messenger(sender, state: states.rewind.rawValue);
            
        }
    }
    
    @IBAction func btn_record(sender: UIButton) {
        if(lbl_state.text == states.stopped.rawValue){
            lbl_state.text = states.record.rawValue
        }
        else{
            messenger(sender, state: states.record.rawValue);
        }
    }
    
    func enabler(value : Bool){
        if(value){
            btn_outletPlay.enabled = true
            btn_outletPause.enabled = true
            btn_outletStop.enabled = true
            btn_outletForward.enabled = true
            btn_outletRewind.enabled = true
            btn_outletRecord.enabled = true
        }
        else{
            btn_outletPlay.enabled = false
            btn_outletPause.enabled = false
            btn_outletStop.enabled = false
            btn_outletForward.enabled = false
            btn_outletRewind.enabled = false
            btn_outletRecord.enabled = false
            lbl_state.text = states.stopped.rawValue;
        }
    }
    
    
    @IBAction func swtch_dvrPower(sender: UISwitch) {
        let enabled = sender.on
        if(enabled){
            lbl_dvrPower.text = power.on.rawValue
            enabler(true)
        }
        else{
            lbl_dvrPower.text = power.off.rawValue
            enabler(false)
        }
    }
    
    @IBAction func btn_swtchToTV(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
