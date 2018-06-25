//
//  ViewController.swift
//  RocketLaunch
//
//  Created by Ronalhyn Rago on 24/06/2018.
//  Copyright © 2018 Ronalhyn Rago. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var darkbluebg: UIImageView!
    @IBOutlet weak var powerbtn: UIButton!
    @IBOutlet weak var cloudholder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var rocketlaunchlbl: UILabel!
    @IBOutlet weak var onlbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func powerbtnpressed(_ sender: Any) {
        cloudholder.isHidden = false
        darkbluebg.isHidden = true
        powerbtn.isHidden = true
    }
    

}

