//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Angel Vázquez on 8/16/18.
//  Copyright © 2018 Ernesto Mejia. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var buttonChoice = 0
    
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var whoWinsLabel: UILabel!
    @IBOutlet weak var cpuLabel: UILabel!
    @IBOutlet weak var rockBtn: UIButton!
    @IBOutlet weak var paperBtn: UIButton!
    @IBOutlet weak var scissorsBtn: UIButton!
    
    var showPlayer = false {
        didSet {
            playerLabel.isHidden = !showPlayer
        }
    }
    var showCPU = false {
        didSet {
            cpuLabel.isHidden = !showCPU
        }
    }

    var showRock = true {
        didSet {
            rockBtn.isHidden = !showRock
        }
    }

    var showPaper = true {
        didSet {
            paperBtn.isHidden = !showPaper
        }
    }
    
    
    var showScissors = true {
        didSet {
            scissorsBtn.isHidden = !showScissors
        }
    }
    
    var showPlayAgain = false {
        didSet {
            playAgainBtn.isHidden = !showPlayAgain
        }
    }
    
    @IBOutlet weak var playAgainBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func playerChoice(_ sender: UIButton) {
        /*
         0 -> rock
         1 -> paper
         2 -> scissors
         */
        let myChoice = playerSign(player: sender.tag)
        let opponentChoice = randomSign()
        playerLabel.text = "\(myChoice)"
        cpuLabel.text = "\(opponentChoice)"
        view.backgroundColor = UIColor.brown
        whoWinsLabel.text = "\(myChoice.didIWin(opponent: opponentChoice))"

        
        hideItems()

        
        
    }
    
    func hideItems() {
        showPlayer = !showPlayer
        showPaper = !showPaper
        showScissors = !showScissors
        showRock = !showRock
        showCPU = !showCPU
        showPlayAgain = !showPlayAgain
    }
    
    @IBAction func playAgain(_ sender: Any) {
        playAgainBtn.isHidden = true

        view.backgroundColor = UIColor(named: "principalColor")
        whoWinsLabel.text = "Rock, Paper, Scissors?"
        
        hideItems()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

