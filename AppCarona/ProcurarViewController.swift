//
//  ProcurarViewController.swift
//  dailyutilities
//
//  Created by Mayara Souza on 3/12/15.
//  Copyright (c) 2015 Mayara Souza. All rights reserved.
//

import UIKit

class ProcurarViewController: UITableViewController {

    
    
    let pickerData:[String] = ["Barra da Tijuca","Leblon","Tijuca","Ipanema","Copacabana"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }
    //MARK: - Delegates and datasources
    //MARK: Data Sources
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
