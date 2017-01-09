//
//  ViewController.swift
//  Egg Timer
//
//  Created by Venkat on 08/11/16.
//  Copyright © 2016 vsv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    var time = 210

    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func timerStart(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func timerPause(_ sender: Any) {
        
        timer.invalidate()
        
    }
    
    @IBAction func addTimer(_ sender: Any) {
        
        time+=10;
        timerLabel.text = String(time)
        
    }
    
    
    @IBAction func timerReset(_ sender: Any) {
        
        time = 210
        timerLabel.text = String(time)
        
    }
    @IBAction func subtractTimer(_ sender: Any) {
            
        if time > 10 {
            time-=10;
            timerLabel.text = String(time)
        }
       
    }
    
    func processTimer(){
        
        if time > 0 {
            time-=1;
            timerLabel.text = String(time)
        }else{
            timer.invalidate()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

