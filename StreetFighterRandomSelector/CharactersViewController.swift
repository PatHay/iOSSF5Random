//
//  CharactersViewController.swift
//  StreetFighterRandomSelector
//
//  Created by Patrick Hayes on 12/13/17.
//  Copyright © 2017 Patrick Hayes. All rights reserved.
//

import UIKit

class CharactersViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let characters: [String] = ["Abigail", "Akuma", "Alex", "Balrog", "Birdie", "Cammy", "Chun-Li", "Dhalsim", "Ed", "F.A.N.G.", "Guile", "Ibuki", "Juri", "Karin", "Ken", "Kolin", "Laura", "M. Bison", "Menat", "Nash", "Necalli", "R. Mika", "Rashid", "Ryu", "Urien", "Vega", "Zangief", "Zeku"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource=self
        tableView.delegate=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension CharactersViewController: UITableViewDataSource, UITableViewDelegate {

    //Required for table views++++++++++++++++++++++++++++++++++++
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCell", for: indexPath)

        let name = "\(characters[indexPath.row])"

        cell.textLabel?.text = name
        cell.textLabel?.textColor = UIColor(red:1.00, green:0.84, blue:0.29, alpha:1.0)
        return cell
    }
    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    //selecting and deselecting checkmark
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)

        if let cell = tableView.cellForRow(at: indexPath){
            if cell.accessoryType == .checkmark{
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
        }
//        print("Cell Selected")
    }
    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    
}

