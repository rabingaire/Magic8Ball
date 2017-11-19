//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Rabin Gaire on 11/19/17.
//  Copyright © 2017 Rabin Gaire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNumber = 0
    let magicBallImage = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var magicBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askMeButton(_ sender: Any) {
        newBallImage()
    }
    
    func newBallImage() {
        randomNumber = Int(arc4random_uniform(5))
        
        magicBall.image = UIImage(named: magicBallImage[randomNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

