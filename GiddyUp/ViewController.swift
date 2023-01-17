//
//  ViewController.swift
//  GiddyUp
//
//  Created by Sammy on 1/17/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    var imageNumber = 0
    let totalNumberofImages = 9
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🫰 viewDidLoad has run!")
        messageLabel.text = "So Fab!"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        var messages = ["You are Awesome!",
                        "You are GENUIE!",
                        "You are Da Bomb!",
                        "You are Great!",
                        "Thank you for Contacting the Genius Bar..."]
        messageLabel.text = messages[Int.random(in: 0...messages.count-1)]
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberofImages))")
        //Sort(ed),Shuffle(d) 
        //could wrap "image\(imageNumber)" as variable string
//        imageView.image = UIImage(named: "image" + String(imageNumber))
//        imageNumber+=1
//        if imageNumber == 10{
//            imageNumber = 0
//        }
        
        //
                   
                //        print("😎 The message button was pressed!")
                //        //messageLabel.text = "You are Awesome!"
                //        if messageLabel.text == awesomeMessage {
                //            messageLabel.text = genuieMessage
                //            imageView.image = UIImage(named: "image9")
                //            messageLabel.textAlignment = NSTextAlignment.left
                //            messageLabel.textColor = UIColor.black
                //        } else if messageLabel.text == "You are Great!"{
                //            messageLabel.text = "You are Da Bomb!"
                //            imageView.image = UIImage(named: "image5")
                //        } else{
                //            messageLabel.text = awesomeMessage
                //            imageView.image = UIImage(named: "image4")
                //        }
                // Command + / creates multi line commenting
                //  /* */ notation also allowed
        
    }
    
    @IBAction func messageButtonPressedSecond(_ sender: UIButton) {
        messageLabel.text = "You are Great!"
        print("🤠 The message button was pressed!")
        messageLabel.textAlignment = .right
        imageView.image = UIImage(named: "image6")
        messageLabel.textColor = UIColor.systemMint
    }
    
    
    
}
