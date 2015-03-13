//
//  DarCaronaViewController.swift
//  dailyutilities
//
//  Created by Mayara Souza on 3/12/15.
//  Copyright (c) 2015 Mayara Souza. All rights reserved.
//

import UIKit

class viagem {
    
    var origem:String?
    var destino:String?
    var motorista:people?
    var hora:String?
    init (origem:String, destino:String, motorista:people, hora:String){
        self.origem = origem
        self.destino = destino
        self.motorista = motorista
        self.hora = hora
    }
}


var matchingRides:[viagem] = []

class DarCaronaViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var timeField: UITextField!
    @IBOutlet weak var collaborationField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var destinyField: UITextField!
    @IBOutlet weak var startField: UITextField!
    
    let picker = UIPickerView(frame: CGRectZero)
    var bairros:[String] = []
    var rides:[viagem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bairros = ["Ipanema", "Leblon", "São Cristóvão"]
        destinyField.inputView = picker
        startField.inputView = picker
        picker.delegate = self
        picker.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dateChanged(sender: UIDatePicker) {
        timeField.text = sender.date.description
    }
   
    @IBAction func giveRide(sender: AnyObject) {
        rides.append(viagem(origem: startField.text, destino: destinyField.text, motorista: peopleArray[0], hora:"18h"))
    }
    @IBAction func searchRide(sender: AnyObject) {
        var newRide : viagem = viagem(origem: startField.text, destino: destinyField.text, motorista: peopleArray[0], hora:"18h")
        var tempRide : viagem
        for i in 0...rides.count - 1{
            tempRide = rides[i]
            if (tempRide.destino == newRide.destino){
                matchingRides.append(tempRide)
            }
            
        }
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
        if (destinyField.isFirstResponder()){
        destinyField.text = bairros[row]
        destinyField.resignFirstResponder()
        }
        else {
        startField.text = bairros[row]
        startField.resignFirstResponder()
        }
    }
}
