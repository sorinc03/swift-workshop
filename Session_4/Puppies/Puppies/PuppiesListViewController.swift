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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10000
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: puppyId, for: indexPath)
        cell.textLabel?.text = "Puppy \(indexPath.row)"
//        cell.imageView?.image = UIImage(named: "pic2.jpg")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
