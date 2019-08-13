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

    var puppies = [Puppy]()

    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return puppies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: puppyId, for: indexPath) as? PuppyTableViewCell
        cell?.puppyNameLabel?.text = puppies[indexPath.row].name
        cell?.puppyImageView?.image = puppies[indexPath.row].image
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        for puppyIndex in 1...10 {
            let image = UIImage(named: "puppy-\(puppyIndex).jpg")
            let puppy = Puppy(name: "Puppy \(puppyIndex)", image: image)
            puppies.append(puppy)
        }
        // Do any additional setup after loading the view.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.

        if let cell = sender as? PuppyTableViewCell,
            let indexPath = self.tableView.indexPath(for: cell) {
            let detailViewController = segue.destination as? ViewController
            let puppy = puppies[indexPath.row]

            detailViewController?.puppyImage = puppy.image
            detailViewController?.puppyName = puppy.name
        }
    }
}

class Puppy {
    var name: String?
    var image: UIImage?

    init(name: String?, image: UIImage?) {
        self.name = name
        self.image = image
    }
}
