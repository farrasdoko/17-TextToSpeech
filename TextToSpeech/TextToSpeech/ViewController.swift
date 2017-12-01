//
//  ViewController.swift
//  TextToSpeech
//
//  Created by Gw on 01/12/17.
//  Copyright © 2017 FarrasDoko. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var lblkata: UITextField!
    
    let synth = AVSpeechSynthesizer()
    var myUtterance =
        AVSpeechUtterance(string: "" )
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnsa(_ sender: Any) {
        myUtterance = AVSpeechUtterance(string: lblkata.text! )
        myUtterance.rate = 0.3
        synth.speak(myUtterance)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
