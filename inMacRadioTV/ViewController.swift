//
//  ViewController.swift
//  inMacRadioTV
//
//  Created by Gleb Karpushkin on 31/12/15.
//  Copyright © 2015 Gleb Karpushkin. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    let defaults = NSUserDefaults.standardUserDefaults()
    let radioPlayer = RadioPlayer()
    
    @IBAction func radioButton(sender: AnyObject) {
        if defaults.objectForKey("radioIsON") as! Bool == false {
            
            self.radioPlayer.play()
            defaults.setBool(true, forKey: "radioIsON")
        }
        else {
            self.radioPlayer.pause()
            defaults.setBool(false, forKey: "radioIsON")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaults.setBool(false, forKey: "radioIsON")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

