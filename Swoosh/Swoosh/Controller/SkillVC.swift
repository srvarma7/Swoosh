//
//  SkillVC.swift
//  Swoosh
//
//  Created by Sai Raghu Varma Kallepalli on 21/7/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player: Player!
    
    
    @IBOutlet weak var finishBtn: CustomBorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(player.desiredLeague)
        
        finishBtn.isEnabled = false
        changeNextBtnOpaticy(value: 0.4)
    }
    
    fileprivate func changeNextBtnOpaticy(value: Float) {
        UIView.animate(withDuration: 1, animations: {
            self.finishBtn.layer.opacity = value
        })
    }
    
    @IBAction func onBeginningTapped(_ sender: Any) {
        selectLeague(skill: "Beginning")
    }
    
    @IBAction func onBallerTapped(_ sender: Any) {
        selectLeague(skill: "Baller")
    }
    
    func selectLeague(skill: String) {
        player.selectedSkillLevel = skill
        print(player.selectedSkillLevel!)
        finishBtn.isEnabled = true
        changeNextBtnOpaticy(value: 1)
    }
    
    @IBAction func onFinishTapped(_ sender: Any) {
        performSegue(withIdentifier: "finalVCSegue", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let finalVC = segue.destination as? FinalVC {
            finalVC.player = player
        }
    }

}
