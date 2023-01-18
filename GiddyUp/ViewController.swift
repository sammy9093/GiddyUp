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
        // Do any additional setup after loading the view.
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
        //var newMessage = messages[Int.random(in: 0...messages.count-1)]
        //var newImage = UIImage(named: "image\(Int.random(in: 0...totalNumberofImages))")
        //        while messageLabel.text == newMessage {
        //            print("*** We had a repeating avalue. Both newMessage and messageLabel.text = \(newMessage) and \(messageLabel.text!)")
        //            newMessage = messages[Int.random(in: 0...messages.count-1)]
        //        }
        //        messageLabel.text = newMessage
        //
        //        while imageView.image == newImage {
        //            print("*** We had a repeating image. Both imageView.image and newImage = \(imageView.image) and \(newImage)")
        //            newImage = UIImage(named: "image\(Int.random(in: 0...totalNumberofImages))")
        //        }
        //        imageView.image = newImage
        //        }
        
//        var newMessageNumber = Int.random(in: 0...messages.count-1)
//        //var newImage = UIImage(named: "image\(Int.random(in: 0...totalNumberofImages))")
//        while messageNumber == newMessageNumber {
//            newMessageNumber = Int.random(in: 0...messages.count-1)
//        }
//        messageNumber = newMessageNumber
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        
        
//        var newImageNumber = Int.random(in: 0...totalNumberofImages)
//        while imageNumber == newImageNumber {
//            newImageNumber = Int.random(in: 0...totalNumberofImages)
//        }
//        imageNumber = newImageNumber
//        imageView.image = UIImage(named: "image\(imageNumber)")
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: totalNumberofImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
//        var newSoundNumber: Int
//        repeat {
//            newSoundNumber = Int.random(in: 0..<toalNumberOfSounds)
//        } while soundNumber == newSoundNumber
//        soundNumber = newSoundNumber
//        print("*** The New Sound Number is \(soundNumber)")
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: toalNumberOfSounds-1)
        playSound(name: "sound\(soundNumber)")
        
    }
        
    @IBAction func messageButtonPressedSecond(_ sender: UIButton) {
        messageLabel.text = "You are Great!"
        print("🤠 The message button was pressed!")
        messageLabel.textAlignment = .right
        imageView.image = UIImage(named: "image6")
        messageLabel.textColor = UIColor.systemMint
    }
    
    
    
}

//Stride used, .reverse
