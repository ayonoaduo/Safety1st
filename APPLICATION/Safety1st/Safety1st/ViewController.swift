//
//  ViewController.swift
//  Safety1st
//
//  Created by 杨靖康 on 2020-04-06.
//  Copyright © 2020 Jingkang Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var redirectNumber = 0000000000
    var helpText = "Enter Phone Number"
    var showCall = true//used to switch between save number and call
    var enteredNum = "empty"
    
    @IBOutlet weak var InfoBox: UILabel!
    @IBAction func One(_ sender: UIButton) {
        if(enteredNum == "empty"){
            enteredNum = "1"
        }
        else{
            enteredNum += "1"
        }
        InfoBox.text = enteredNum
    }
    @IBAction func Two(_ sender: UIButton) {
        if(enteredNum == "empty"){
            enteredNum = "2"
        }
        else{
            enteredNum += "2"
        }
        InfoBox.text = enteredNum
    }
    
    @IBAction func Three(_ sender: UIButton) {
     if(enteredNum == "empty"){
               enteredNum = "3"
           }
           else{
               enteredNum += "3"
           }
           InfoBox.text = enteredNum
    }
    
    @IBAction func Four(_ sender: UIButton) {
     if(enteredNum == "empty"){
               enteredNum = "4"
           }
           else{
               enteredNum += "4"
           }
           InfoBox.text = enteredNum
    }
    
    @IBAction func Five(_ sender: UIButton) {
     if(enteredNum == "empty"){
               enteredNum = "5"
           }
           else{
               enteredNum += "5"
           }
           InfoBox.text = enteredNum
    }
    
    @IBAction func Six(_ sender: UIButton) {
     if(enteredNum == "empty"){
               enteredNum = "6"
           }
           else{
               enteredNum += "6"
           }
           InfoBox.text = enteredNum
    }
    
    @IBAction func Seven(_ sender: UIButton) {
     if(enteredNum == "empty"){
               enteredNum = "7"
           }
           else{
               enteredNum += "7"
           }
           InfoBox.text = enteredNum
    }
    
    @IBAction func Eight(_ sender: UIButton) {
     if(enteredNum == "empty"){
               enteredNum = "8"
           }
           else{
               enteredNum += "8"
           }
           InfoBox.text = enteredNum
    }
    
    @IBAction func Nine(_ sender: UIButton) {
     if(enteredNum == "empty"){
               enteredNum = "9"
           }
           else{
               enteredNum += "9"
           }
           InfoBox.text = enteredNum
    }
    
    @IBAction func Zero(_ sender: UIButton) {
     if(enteredNum == "empty"){
               enteredNum = "0"
           }
           else{
               enteredNum += "0"
           }
           InfoBox.text = enteredNum
    }
    
    @IBAction func settings(_ sender: UIButton) {
        InfoBox.text = "current redirect:\n" + String(redirectNumber)
        saveButton.isHidden = false;
        CallButtonOutlet.isHidden = true
        enteredNum = "empty"
    }
    
    @IBOutlet weak var CallButtonOutlet: UIButton!
    @IBAction func Call(_ sender: UIButton) {
        //phone redirect number here
        
        if(redirectNumber != 0){
            guard let url = URL(string:"TEL://\(redirectNumber)")
            else{
                return
            }
            UIApplication.shared.open(url)
        }
    }

    @IBOutlet weak var saveButton: UIButton!
    @IBAction func saveButtonAction(_ sender: UIButton) {
        CallButtonOutlet.isHidden = false
        saveButton.isHidden = true
        if(enteredNum != "empty" && !enteredNum.isEmpty){
            redirectNumber = Int(enteredNum) ?? 0
            InfoBox.text = "Redirect Saved"
        }
        else {
            InfoBox.text = " "
        }
        enteredNum = "empty"
    }
    
    @IBAction func backSpace(_ sender: UIButton) {
        if(enteredNum != "empty" && !enteredNum.isEmpty){
            enteredNum.remove(at: enteredNum.index(before: enteredNum.endIndex))
            InfoBox.text = enteredNum
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        saveButton.isHidden = true
        
    }
    
}
