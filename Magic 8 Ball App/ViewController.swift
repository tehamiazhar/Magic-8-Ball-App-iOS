//
//  ViewController.swift
//  Magic 8 Ball App
//
//  Created by Muhammad Tehami Azhar on 29/09/2018.
//  Copyright © 2018 Muhammad Tehami Azhar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ballImage: UIImageView!
    var randomBalls : Int = 0
    let ballsArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        askPressedI()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func askBtn(_ sender: UIButton) {
        askPressedI()
    }
    
    func askPressedI(){
        randomBalls = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named: ballsArray[randomBalls])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        askPressedI()
    }
    
    

}

