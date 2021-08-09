//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(ressourceName: sender.currentTitle!)
        
            // change opacity on tap
            sender.alpha = 0.5
            print("start")
        
            //Code should execute after 2 second delay.
            DispatchQueue.main.asyncAfter(deadline: .now() + 2 ) {
          
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
            print("end")
          }
        
        print(sender.backgroundColor!)
        print(sender.currentTitle!)
       
    }
    
    func playSound(ressourceName: String) {
        let url = Bundle.main.url(forResource: ressourceName, withExtension:"wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

