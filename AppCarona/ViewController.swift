//
//  ViewController.swift
//  dailyutilities
//
//  Created by Mayara Souza on 3/12/15.
//  Copyright (c) 2015 Mayara Souza. All rights reserved.
//

import UIKit

class people {
    var name:String?
    var bairro:String?
    var phone:String?
    init (name:String, bairro:String, phone:String){
        self.name = name
        self.bairro = bairro
        self.phone = phone
        
    }
}

 var peopleArray:[people] = []

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {//

    @IBOutlet var userPhoto: UIImageView!
    @IBOutlet var nameField: UITextField!
    @IBOutlet var phoneField: UITextField!
    @IBOutlet var rideForField: UITextField!
    @IBOutlet var rideFromField: UITextField!
    
    var bairros:[String] = []
   
    let picker = UIPickerView(frame: CGRectZero)
    var i = 0
    
//    struct people {
//        var name:String?
//        var bairro:String?
//        var phone:String?
//        init (name:String, bairro:String, phone:String){
//            self.name = name
//            self.bairro = bairro
//            self.phone = phone
//        }
//    }
    
    
    @IBAction func savePerson(sender: AnyObject) {
        
        peopleArray.append(people(name: nameField.text, bairro: rideFromField.text, phone: phoneField.text))
        var temp = peopleArray[i]
        i++
        println("Nome : \(temp.name) Tel: \(temp.phone) Bairro: \(temp.bairro)")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        nameField.placeholder = "Nome"
        phoneField.placeholder = "Telefone"
        
        let tap = UITapGestureRecognizer(target: self, action: "handleTap")
        self.userPhoto.addGestureRecognizer(tap)
        
        picker.delegate = self
        picker.dataSource = self
        rideForField.inputView = picker
        rideFromField.inputView = picker
        
        bairros = ["Ipanema", "Leblon", "São Cristóvão"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func handleTap() {
        
        println("tap")
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return bairros.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        
        return bairros[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if (rideFromField.isFirstResponder()){
            rideFromField.text = bairros[row]
            rideFromField.resignFirstResponder()
        }
        else{
            rideForField.text = bairros[row]
            rideForField.resignFirstResponder()
        }
       
    }
}

