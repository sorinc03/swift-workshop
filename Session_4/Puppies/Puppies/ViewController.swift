//
//  ViewController.swift
//  Puppies
//
//  Created by Iulia Monica Baltoi on 7/23/19.
//  Copyright © 2019 Iulia Monica Baltoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var sliderValue: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var textLabel: UILabel!
    
    var puppyName: String?
    var puppyImage: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        welcomeLabel.text = puppyName
        imageView.image = puppyImage

        textLabel.alpha = 0
        textLabel.textColor = .green
    }

    @IBAction func buttonTapped(_ sender: Any) {
        welcomeLabel.textColor = .green
        welcomeLabel.text = "Welcome to Swift Workshop"
        welcomeLabel.sizeToFit()
    }

    @IBAction func sliderDragged(_ sender: UISlider) {
        sliderValue.text = "\(Int(sender.value))%"

        if Int(sender.value) == 100 {
            UIView.animate(withDuration: 1.0) {
                self.textLabel.alpha = 1.0
            }
        } else {
            self.textLabel.alpha = 0
        }
    }
}

