//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Sai Raghu Varma Kallepalli on 21/7/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!

    @IBOutlet weak var nextBtn: CustomBorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.isEnabled = false
        changeNextBtnOpaticy(value: 0.4)
        player = Player()
    }
    
    fileprivate func changeNextBtnOpaticy(value: Float) {
        UIView.animate(withDuration: 1, animations: {
            self.nextBtn.layer.opacity = value
        })
    }

    // MARK: - Category selection
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(league: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(league: "womens")
    }
    
    @IBAction func onCoEdTapped(_ sender: Any) {
        selectLeague(league: "coed")
    }
    
    func selectLeague(league: String) {
        player.desiredLeague = league
        nextBtn.isEnabled = true
        changeNextBtnOpaticy(value: 1)
    }
    
    // MARK: - Navigation to Skills VC
    @IBAction func nextBtnTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    

}
