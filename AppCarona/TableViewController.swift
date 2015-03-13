//
//  TableViewController.swift
//  AppCarona
//
//  Created by Lorenzo Saraiva on 3/12/15.
//  Copyright (c) 2015 BEPID-PucRJ. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
  
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println()
        var nib = UINib(nibName: "CustomCell", bundle: nil)
        self.tableView.registerNib(nib, forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
   
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return matchingRides.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:CustomCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as CustomCell
        
        var temp = matchingRides[indexPath.row];
        
        cell.houseLocation?.text = temp.destino;
        cell.tripTime.text = temp.hora
        // Configure the cell...

        return cell
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var headerView = UIView(frame: CGRectMake(0, 0, self.tableView.frame.size.width, 300))
        return headerView
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    

   }
