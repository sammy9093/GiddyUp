//
//  ViewController.swift
//  GiddyUp
//
//  Created by Sammy on 1/17/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🫰 viewDidLoad has run!")
        messageLabel.text = "So Fab!"
        // Do any additional setup after loading the view.
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎 The message button was pressed!")
        messageLabel.text = "You are Awesome!"
        messageLabel.textAlignment = NSTextAlignment.left
        messageLabel.textColor = UIColor.black
    }
    
    @IBAction func messageButtonPressedSecond(_ sender: UIButton) {
        messageLabel.text = "You are Great!"
        messageLabel.textAlignment = .right
        messageLabel.textColor = UIColor.systemMint
    }
    
    
}

