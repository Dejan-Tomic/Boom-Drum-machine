//
//  ViewController.swift
//  DrumSequencer
//
//  Created by Dejan Tomic on 30/07/2019.
//  Copyright © 2019 Dejan Tomic. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var lcdDisplay: UIImageView!
    var audioPlayerFinger1 : AVAudioPlayer!
    var audioPlayerFinger2 : AVAudioPlayer!


    var soundArray = ["kick.808.big", "snare.808.pop", "hihat.808.small", "ride.808.weird", "hitom.808.3", "midtom.808.3", "lotom.808.3", "crash.808.weird"]
    
    var lcdDisplayArray = [UIImage(named: "kick.808")!, UIImage(named: "snare.808")!, UIImage(named: "highhat.808")!, UIImage(named: "ride.808")!, UIImage(named: "hightom.808")!, UIImage(named:"mediumtom.808")!, UIImage(named: "lowtom.808")!, UIImage(named: "crash.808")!]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        playSoundFinger1(soundFileName: soundArray[sender.tag - 1])
      // playSoundFinger2(soundFileName: soundArray[sender.tag - 1])
       setLcdDisplay(currentNote: lcdDisplayArray[sender.tag - 1])

    }
    

    
    func playSoundFinger1(soundFileName: String) {
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "mp3")
        
        do {
            audioPlayerFinger1 = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        audioPlayerFinger1.play()
    }
    
    func playSoundFinger2(soundFileName: String) {
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "mp3")
        
        do {
            audioPlayerFinger2 = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        audioPlayerFinger2.play()
    }

    
    
    
    func setLcdDisplay(currentNote: UIImage){
        lcdDisplay.image = currentNote
    }
    
    
}

