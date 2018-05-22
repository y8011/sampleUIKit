//
//  ViewController.swift
//  sampleUIKit
//
//  Created by yuka on 2018/05/22.
//  Copyright © 2018年 yuka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var my_switch1: UISwitch!
    @IBOutlet weak var mySwitch2: UISwitch!
    
    @IBOutlet weak var mySlider: UISlider!
    
    @IBOutlet weak var myBlueTextField: UITextField!
    
    @IBOutlet weak var myTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //　表示する前に発動
        myTextView.text = "なにか入力してください"
        myTextView.textColor = UIColor.white
    }

    @IBAction func changeSwitch1(_ sender: UISwitch) {
        print(#function)
        if sender.isOn == true {
            mySlider.value = 0

        }
//        else {
//            mySwitch2.isOn = false
//        }
        mySwitch2.isOn = sender.isOn
        
    }
    
    @IBAction func enterReturnKey1(_ sender: UITextField) {
        print(#function,sender.text!)
        
        if sender.text! == "321" {
            myBlueTextField.text = "紫"
            
        }
        
    }
    
    @IBAction func tapButton(_ sender: UIButton) {
        
        // キーボードを閉じる
        myTextView.resignFirstResponder()
        
    }
    
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
        
        if sender.value > 0.5 {
            view.backgroundColor = UIColor.blue
        }
        else {
            view.backgroundColor = UIColor.white
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

