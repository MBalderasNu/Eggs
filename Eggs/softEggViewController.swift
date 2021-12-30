//
//  softEggViewController.swift
//  Eggs
//
//  Created by Mateo Balderas on 19.10.2021.
//

import UIKit
import AVFoundation

class softEggViewController: UIViewController {

    let softTime = 300
    
    var totalTime = 0
    
    var secondsPassed = 0
    
    var timer = Timer()
    
    var player : AVAudioPlayer!
    
    @IBOutlet weak var softEggLabel: UILabel!
    
    @IBOutlet weak var progressSoftBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func cookSoftEgg(_ sender: UIButton) {
        timer.invalidate()
        
        totalTime = softTime
        
        softEggLabel.text = "Cooking..."
        
        progressSoftBar.progress = 0.0
        secondsPassed = 0
        
        
        timer=Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
       
        if secondsPassed < totalTime{
            secondsPassed += 1
            progressSoftBar.progress = Float(secondsPassed )/Float( totalTime)
            
        } else {
            timer.invalidate()
            
            softEggLabel.text = "Done!"
            
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
                       player = try! AVAudioPlayer(contentsOf: url!)
                       player.play()
        }
        
    }
    
    
    @IBAction func returnFromSoftEgg(_ sender: Any) {
        timer.invalidate()
        performSegue(withIdentifier: "goHomeSoftEgg", sender: self)
        
    }
    
}
