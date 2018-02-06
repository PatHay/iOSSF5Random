//
//  ViewController.swift
//  StreetFighterRandomSelector
//
//  Created by Patrick Hayes on 12/12/17.
//  Copyright © 2017 Patrick Hayes. All rights reserved.
//

//To-Do List
//1.  Add character selector using a tableviewcontroller
//2.  Mirror match selector
//3.  Match history data saving
//4.  Save Player data
//5.  Win/Loss counter for players

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var player1Label: UILabel!
    @IBOutlet weak var player2Label: UILabel!
    
    @IBOutlet weak var imagePlayer1: UIImageView!
    @IBOutlet weak var imagePlayer2: UIImageView!
    

    
    
    
    let characters: [String] = ["Abigail", "Akuma", "Alex", "Balrog", "Birdie", "Cammy", "Chun-Li", "Dhalsim", "Ed", "F.A.N.G.", "Guile", "Ibuki", "Juri", "Karin", "Ken", "Kolin", "Laura", "M. Bison", "Menat", "Nash", "Necalli", "R. Mika", "Rashid", "Ryu", "Urien", "Vega", "Zangief", "Zeku"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func randomButton(_ sender: Any) {
        let random = Int(arc4random_uniform(UInt32(characters.count)))
        let random2 = Int(arc4random_uniform(UInt32(characters.count)))
        
        player1Label.text = characters[random]
        player2Label.text = characters[random2]
        
        p1ImageFetch(name: characters[random])
        p2ImageFetch(name: characters[random2])
        
    }
    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func p1ImageFetch(name: String) {
        if name == "Abigail"{
            imagePlayer1.image = UIImage(named: "Abigail")
        } else if name == "Akuma"{
            imagePlayer1.image = UIImage(named: "Akuma")
        } else if name == "Alex"{
            imagePlayer1.image = UIImage(named: "Alex")
        } else if name == "Balrog"{
            imagePlayer1.image = UIImage(named: "Balrog")
        } else if name == "Birdie"{
            imagePlayer1.image = UIImage(named: "Birdie")
        } else if name == "Cammy"{
            imagePlayer1.image = UIImage(named: "Cammy")
        } else if name == "Chun-Li"{
            imagePlayer1.image = UIImage(named: "Chunli")
        } else if name == "Dhalsim"{
            imagePlayer1.image = UIImage(named: "Dhalsim")
        } else if name == "Ed"{
            imagePlayer1.image = UIImage(named: "Ed")
        } else if name == "F.A.N.G."{
            imagePlayer1.image = UIImage(named: "Fang")
        } else if name == "Guile"{
            imagePlayer1.image = UIImage(named: "Guile")
        } else if name == "Ibuki"{
            imagePlayer1.image = UIImage(named: "Ibuki")
        } else if name == "Juri"{
            imagePlayer1.image = UIImage(named: "Juri")
        } else if name == "Karin"{
            imagePlayer1.image = UIImage(named: "Karin")
        } else if name == "Ken"{
            imagePlayer1.image = UIImage(named: "Ken")
        } else if name == "Kolin"{
            imagePlayer1.image = UIImage(named: "Kolin")
        } else if name == "Laura"{
            imagePlayer1.image = UIImage(named: "Laura")
        } else if name == "M. Bison"{
            imagePlayer1.image = UIImage(named: "Mbison")
        } else if name == "Menat"{
            imagePlayer1.image = UIImage(named: "Menat")
        } else if name == "Nash"{
            imagePlayer1.image = UIImage(named: "Nash")
        } else if name == "Necalli"{
            imagePlayer1.image = UIImage(named: "Necalli")
        } else if name == "R. Mika"{
            imagePlayer1.image = UIImage(named: "R-mika")
        } else if name == "Rashid"{
            imagePlayer1.image = UIImage(named: "Rashid")
        } else if name == "Ryu"{
            imagePlayer1.image = UIImage(named: "Ryu")
        } else if name == "Urien"{
            imagePlayer1.image = UIImage(named: "Urien")
        } else if name == "Vega"{
            imagePlayer1.image = UIImage(named: "Vega")
        } else if name == "Zangief"{
            imagePlayer1.image = UIImage(named: "Zangief")
        } else {
            imagePlayer1.image = UIImage(named: "Zeku")
        }
    }
    
    func p2ImageFetch(name: String) {
        if name == "Abigail"{
            imagePlayer2.image = UIImage(named: "Abigail")
        } else if name == "Akuma"{
            imagePlayer2.image = UIImage(named: "Akuma")
        } else if name == "Alex"{
            imagePlayer2.image = UIImage(named: "Alex")
        } else if name == "Balrog"{
            imagePlayer2.image = UIImage(named: "Balrog")
        } else if name == "Birdie"{
            imagePlayer2.image = UIImage(named: "Birdie")
        } else if name == "Cammy"{
            imagePlayer2.image = UIImage(named: "Cammy")
        } else if name == "Chun-Li"{
            imagePlayer2.image = UIImage(named: "Chunli")
        } else if name == "Dhalsim"{
            imagePlayer2.image = UIImage(named: "Dhalsim")
        } else if name == "Ed"{
            imagePlayer2.image = UIImage(named: "Ed")
        } else if name == "F.A.N.G."{
            imagePlayer2.image = UIImage(named: "Fang")
        } else if name == "Guile"{
            imagePlayer2.image = UIImage(named: "Guile")
        } else if name == "Ibuki"{
            imagePlayer2.image = UIImage(named: "Ibuki")
        } else if name == "Juri"{
            imagePlayer2.image = UIImage(named: "Juri")
        } else if name == "Karin"{
            imagePlayer2.image = UIImage(named: "Karin")
        } else if name == "Ken"{
            imagePlayer2.image = UIImage(named: "Ken")
        } else if name == "Kolin"{
            imagePlayer2.image = UIImage(named: "Kolin")
        } else if name == "Laura"{
            imagePlayer2.image = UIImage(named: "Laura")
        } else if name == "M. Bison"{
            imagePlayer2.image = UIImage(named: "Mbison")
        } else if name == "Menat"{
            imagePlayer2.image = UIImage(named: "Menat")
        } else if name == "Nash"{
            imagePlayer2.image = UIImage(named: "Nash")
        } else if name == "Necalli"{
            imagePlayer2.image = UIImage(named: "Necalli")
        } else if name == "R. Mika"{
            imagePlayer2.image = UIImage(named: "R-mika")
        } else if name == "Rashid"{
            imagePlayer2.image = UIImage(named: "Rashid")
        } else if name == "Ryu"{
            imagePlayer2.image = UIImage(named: "Ryu")
        } else if name == "Urien"{
            imagePlayer2.image = UIImage(named: "Urien")
        } else if name == "Vega"{
            imagePlayer2.image = UIImage(named: "Vega")
        } else if name == "Zangief"{
            imagePlayer2.image = UIImage(named: "Zangief")
        } else {
            imagePlayer2.image = UIImage(named: "Zeku")
        }
    }
    
}

