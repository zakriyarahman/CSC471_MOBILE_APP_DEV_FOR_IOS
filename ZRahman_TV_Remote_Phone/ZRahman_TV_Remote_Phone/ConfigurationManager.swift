//
//  ConfigurationManager.swift
//  ZRahman_TV_Remote_Phone
//
//  Created by Zak on 3/1/16.
//  Copyright © 2016 csc471.depaul.edu. All rights reserved.
//

import UIKit

class ConfigurationManager: NSObject {
    
    private var id: Int
    private var channelNumber: Int
    private var channelLabel:String
    
    init(idIn:Int, channelNumberIn:Int, channelLabelIn: String){
        id  =   idIn
        channelNumber   =   channelNumberIn
        channelLabel    =   channelLabelIn
    }
    
    func saveFavChannel(fcObj fcObj: ConfigurationManager, idIn : Int, channelNumberIn: Int, channelLabelIn: String) {
        fcObj.id = idIn
        fcObj.channelNumber = channelNumberIn
        fcObj.channelLabel = channelLabel
    }
    
    func getId()->Int{
        return  id;
    }
    
    func setId(idIn:Int){
        id  =   idIn;
    }
    
    func getChannelNumber()->Int{
        return  channelNumber;
    }
    
    func setChannelNumber(channelNumberIn:Int){
        channelNumber  =   channelNumberIn;
    }
    
    func getChannelLabel()->String{
        return  channelLabel;
    }
    
    func setChannelLabel(channelLabelIn:String){
        channelLabel  =   channelLabelIn;
    }

}
