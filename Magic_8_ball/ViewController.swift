//
//  ViewController.swift
//  Magic_8_ball
//
//  Created by Eddy Caldas on 11/18/17.
//  Copyright © 2017 Eddy Caldas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = 0

    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        ImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
}

