//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Apple Device 9 on 10/30/19.
//  Copyright © 2019 jun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var computerChoice: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var userScore: UILabel!
    @IBOutlet weak var compScore: UILabel!
    @IBOutlet weak var myrock: UIButton!
    @IBOutlet weak var mypaper: UIButton!
    @IBOutlet weak var myscissors: UIButton!
    @IBOutlet weak var mylizard: UIButton!
    @IBOutlet weak var myspock: UIButton!
    
    
    @IBOutlet weak var extendedGame: UIButton!
    @IBOutlet weak var playAgain: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myrock.layer.cornerRadius = 20
        mypaper.layer.cornerRadius = 20
        myscissors.layer.cornerRadius = 20
        mylizard.isHidden = true
        myspock.isHidden = true
        playAgain.layer.cornerRadius = 10
        extendedGame.layer.cornerRadius = 10
        
    }
    
//    func determineAppState(checkGame: GameState) {
//        switch checkGame {
//        case .win: return view.backgroundColor = .green
//        case .lose: return view.backgroundColor = .red
//        case .draw: return view.backgroundColor = .yellow
//        default:
//            view.backgroundColor = .blue
//        }
//    }
    
  
    
    
    @IBAction func rock(_ sender: Any) {
        let random = randomSign()
        computerChoice.text = random.SignValue
        let userChoice = Sign.rock
        let checkGame = userChoice.makeYourMove(sign: random)
        result.text = "\(userChoice) vs. \(random) . \(checkGame.actionGameState())"
        userScore.text = String(userCountScore)
        compScore.text = String(compCountScore)
//        determineAppState(checkGame: checkGame)
    }
    
    @IBAction func paper(_ sender: Any) {
        let random = randomSign()
        computerChoice.text = random.SignValue
        let userChoice = Sign.paper
        let checkGame = userChoice.makeYourMove(sign: random)
        result.text = "\(userChoice) vs. \(random) . \(checkGame.actionGameState())"
        userScore.text = String(userCountScore)
        compScore.text = String(compCountScore)
        
    }
    
    @IBAction func scissors(_ sender: Any) {
        let random = randomSign()
        computerChoice.text = random.SignValue
        let userChoice = Sign.scissors
        let checkGame = userChoice.makeYourMove(sign: random)
        print(userChoice)
        result.text = "\(userChoice) vs. \(random) . \(checkGame.actionGameState())"
        userScore.text = String(userCountScore)
        compScore.text = String(compCountScore)
    }
    
    @IBAction func lizard(_ sender: Any) {
        let random = randomSign()
        computerChoice.text = random.SignValue
        let userChoice = Sign.lizard
        let checkGame = userChoice.makeYourMove(sign: random)
        result.text = "\(userChoice) vs. \(random) . \(checkGame.actionGameState())"
        userScore.text = String(userCountScore)
        compScore.text = String(compCountScore)
    }
    
    
    @IBAction func spock(_ sender: Any) {
        let random = randomSign()
        computerChoice.text = random.SignValue
        let userChoice = Sign.spock
        let checkGame = userChoice.makeYourMove(sign: random)
        result.text = "\(userChoice) vs. \(random) . \(checkGame.actionGameState())"
        userScore.text = String(userCountScore)
        compScore.text = String(compCountScore)
    }
    
    @IBAction func playAgainRestoreCount(_ sender: Any) {
        userCountScore = 0
        compCountScore = 0
        userScore.text = String(userCountScore)
        compScore.text = String(compCountScore)
        result.text = GameState.start.actionGameState()
        computerChoice.text = "🎃"
    }
    
    @IBAction func extendedGameButton(_ sender: Any) {
        if mylizard.isHidden == true {
            mylizard.isHidden = false
            myspock.isHidden = false
            extended = true
            extendedGame.setTitle("Traditional game", for: .normal)
        }else{
            mylizard.isHidden = true
            myspock.isHidden = true
            extended = false
            extendedGame.setTitle("Extended game", for: .normal)
        }
    }

}

