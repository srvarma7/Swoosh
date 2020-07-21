//
//  FinalVC.swift
//  Swoosh
//
//  Created by Sai Raghu Varma Kallepalli on 21/7/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import UIKit

class FinalVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var topBall: CustomImageView!
    @IBOutlet weak var bottomBall: CustomImageView!
    
    @IBOutlet weak var leagueLabel: UILabel!
    @IBOutlet weak var skillLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topBall.transform = CGAffineTransform(translationX: 150, y: 0)
        bottomBall.transform = CGAffineTransform(translationX: -150, y: 0)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        leagueLabel.text = "Selected League: \(player.desiredLeague!)"
        skillLabel.text = "Selected Skill: \(player.selectedSkillLevel!)"
        
        UIView.animate(withDuration: 1, delay: 0.5, animations: {
            self.topBall.transform = CGAffineTransform(translationX: -20, y: 0)
            self.bottomBall.transform = CGAffineTransform(translationX: 20, y: 0)
        })
    }
    
    @IBAction func onCloseTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
    

}
