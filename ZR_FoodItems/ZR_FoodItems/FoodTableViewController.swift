//
//  FoodTableViewController.swift
//  ZR_FoodItems
//
//  Created by Zak on 3/1/16.
//  Copyright © 2016 csc471.depaul.edu. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return foods.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let food = foods[indexPath.row]
        let cell = tableView.dequeueReusableCellWithIdentifier(food.type.rawValue, forIndexPath: indexPath) as UITableViewCell
        
        // Configure the cell...
        
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.shortDescription
        
        return cell
    }
    
    override func tableView(tableView: UITableView,
        didSelectRowAtIndexPath indexPath: NSIndexPath) {
            let title = "Food List"
            let message = "You have selected \(foods[indexPath.row].name)"
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert)
            let okayAction = UIAlertAction(title: "Okay", style: .Default, handler: nil)
            alertController.addAction(okayAction)
            presentViewController(alertController, animated: true, completion: nil)
            self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    /*
    override func tableView(tableView: UITableView,
    accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath) {
    let food = foods[indexPath.row]
    let title = food.name
    let message = food.longDescription
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .ActionSheet)
    let okayAction = UIAlertAction(title: "Okay", style: .Default, nil)
    alertController.addAction(okayAction)
    presentViewController(alertController, animated: true, completion: nil)
    self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    */
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the item to be re-orderable.
    return true
    }
    */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        if let detailViewController = segue.destinationViewController as? FoodDetailViewController {
            if let cell = sender as? UITableViewCell {
                if let indexPath = self.tableView.indexPathForCell(cell) {
                    detailViewController.food = foods[indexPath.row]
                }
            }
        }
        
    }
}
