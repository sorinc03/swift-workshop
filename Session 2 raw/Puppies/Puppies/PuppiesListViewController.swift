//
//  PuppiesListViewController.swift
//  Puppies
//
//  Created by Cesare De Cal on 30/07/2019.
//  Copyright © 2019 Iulia Monica Baltoi. All rights reserved.
//

import UIKit

class PuppiesListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let puppyId = "PuppyId"
    var puppyArray = [Puppy]()


    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0..<10 {
            guard let image = UIImage(named: "Puppy-pics/puppy-\(i).jpg") else {
                return
            }
            let puppy = Puppy(image: image, name: "Puppy \(i)")
            puppyArray.append(puppy)
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return puppyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: puppyId, for: indexPath) as! PuppyTableViewCell
        cell.puppyTitleLabel?.text = "Puppy \(indexPath.row)"
        cell.puppyImageView?.image =  UIImage(named: "Puppy-pics/puppy-\(indexPath.row).jpg")

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

class Puppy {
    let image: UIImage
    let name: String

    init(image: UIImage, name: String) {
        self.image = image
        self.name = name
    }
}
