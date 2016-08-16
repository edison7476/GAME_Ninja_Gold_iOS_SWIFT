//
//  ViewController.swift
//  NinjaGold
//
//  Created by Jia Wang on 7/7/16.
//  Copyright © 2016 Jia Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var score = 0

    
    @IBOutlet weak var totalScore: UILabel!
    
    @IBOutlet weak var FarmGold: UILabel!
    @IBOutlet weak var CaveGold: UILabel!
    @IBOutlet weak var HouseGold: UILabel!
    @IBOutlet weak var CasinoGold: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FarmGold.hidden = true
        CaveGold.hidden = true
        HouseGold.hidden = true
        CasinoGold.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func scoreUpdate(gold: Int){
        score += gold
        totalScore.text = String(score)
    }

    @IBAction func buidingButton(sender: UIButton) {
        print(sender.tag)
        print("hah")
        if sender.tag == 1 {
            CaveGold.hidden = true
            HouseGold.hidden = true
            CasinoGold.hidden = true
            let gold = Int(arc4random_uniform(11)+10)

            FarmGold.text = "You earned \(gold)"
            FarmGold.hidden = false
            
            score += gold
            totalScore.text = String(score)
        }
        else if sender.tag == 2 {
            FarmGold.hidden = true
            HouseGold.hidden = true
            CasinoGold.hidden = true
            let gold = Int(arc4random_uniform(6)+5)
            score += gold
            CaveGold.text = "You earned \(gold)"
            CaveGold.hidden = false
            totalScore.text = String(score)
        }
        else if sender.tag == 3 {
            FarmGold.hidden = true
            CaveGold.hidden = true
            CasinoGold.hidden = true
            let gold = Int(arc4random_uniform(4)+2)
            score += gold
            HouseGold.text = "You earned \(gold)"
            HouseGold.hidden = false
            totalScore.text = String(score)
        }
        else if sender.tag == 4 {
            FarmGold.hidden = true
            HouseGold.hidden = true
            CaveGold.hidden = true
            let gold = Int(arc4random_uniform(101)) - 50
            score += gold
            CasinoGold.text = "You earned \(gold)"
            CasinoGold.hidden = false
            totalScore.text = String(score)
        }
    }
    
    @IBAction func reset(sender: UIButton) {
        FarmGold.hidden = true
        CaveGold.hidden = true
        HouseGold.hidden = true
        CasinoGold.hidden = true
        score = 0
        totalScore.text = String(score)
    }

}

