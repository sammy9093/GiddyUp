//
//  ViewController.swift
//  GiddyUp
//
//  Created by Sammy on 1/17/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    @IBOutlet weak var soundLabel: UILabel!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberofImages = 9
    let toalNumberOfSounds = 6
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🫰 viewDidLoad has run!")
        messageLabel.text = ""
    }
    
    
    func playSound(name: String) {
        if let sound = NSDataAsset(name: name) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("👿 ERROR: \(error.localizedDescription) Could not read data from file sound0")
            }
        } else {
            print("👿 ERROR: Could not read data from file sound0")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperBounds: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperBounds-1)
        } while originalNumber == newNumber
        return newNumber
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        var messages = ["You are Awesome!",
                        "You are GENUIE!",
                        "You are Da Bomb!",
                        "You are Great!",
                        "Thank you for Contacting the Genius Bar..."]
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: totalNumberofImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: toalNumberOfSounds-1)
        if playSoundSwitch.isOn {
            playSound(name: "sound\(soundNumber)")
        }
    }
    
    @IBAction func messageButtonPressedSecond(_ sender: UIButton) {
        messageLabel.text = "You are Great!"
        print("🤠 The message button was pressed!")
        messageLabel.textAlignment = .right
        imageView.image = UIImage(named: "image6")
        messageLabel.textColor = UIColor.systemMint
    }
    
    @IBAction func playSoundTriggered(_ sender: UISwitch) {
        if !sender.isOn  && audioPlayer  != nil {
            audioPlayer.stop()
            soundLabel.text = "🔇"
        }
        if !sender.isOn && audioPlayer  == nil {
            soundLabel.text = "🔇"
        }
        if sender.isOn {
            soundLabel.text = "🔊"
        } else {
            return
    }
    
    }
    
}

//Stride used, .reverse
