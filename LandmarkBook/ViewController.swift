//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Mehmet Güven on 6.07.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        var landmarkNames = [String]()
        landmarkNames.append("Colesseum")
        landmarkNames.append("Great Wall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonehenge")
        landmarkNames.append("Taj Mahal")
        
        var landmarkImages = [UIImage]()
        landmarkImages.append(UIImage(named: "colesseum")!)
        landmarkImages.append(UIImage(named: "greatwall")!)
        landmarkImages.append(UIImage(named: "kremlin")!)
        landmarkImages.append(UIImage(named: "stonehenge")!)
        landmarkImages.append(UIImage(named: "tajmahal")!)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
        //cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration()
        content.text = "TableView"
        content.secondaryText = "Test"
        cell.contentConfiguration = content
        return cell
    }

}

