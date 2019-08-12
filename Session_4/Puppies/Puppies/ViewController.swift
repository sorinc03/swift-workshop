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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        welcomeLabel.textColor = .green
        welcomeLabel.text = "Welcome to Swift Workshop"
        welcomeLabel.sizeToFit()
    }

    @IBAction func sliderDragged(_ sender: UISlider) {
        sliderValue.text = "\(sender.value)"
    }
}

