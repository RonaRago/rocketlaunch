//
//  ViewController.swift
//  RocketLaunch
//
//  Created by Ronalhyn Rago on 24/06/2018.
//  Copyright © 2018 Ronalhyn Rago. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    //testpush
    //variable declaration
    @IBOutlet weak var darkbluebg: UIImageView!
    @IBOutlet weak var powerbtn: UIButton!
    @IBOutlet weak var cloudholder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var rocketlaunchlbl: UILabel!
    @IBOutlet weak var onlbl: UILabel!
    
    
    var player: AVAudioPlayer!
    
    //Starting point of the code
    override func viewDidLoad() {
        super.viewDidLoad()
        //grabbing the wav file
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }
        catch let error as NSError{
     
            print(error.description)
        }
    }
    @IBAction func powerbtnpressed(_ sender: Any) {
        cloudholder.isHidden = false
        darkbluebg.isHidden = true
        powerbtn.isHidden = true
        
        player.play()
        
        //Animation
        UIView.animate(withDuration: 2.2, animations: {
            self.rocket.frame = CGRect(x: 0, y: 50, width: 414, height: 532)
        }) { (finished) in
            self.rocketlaunchlbl.isHidden = false
            self.onlbl.isHidden = false
            
        }
    }
    

}

