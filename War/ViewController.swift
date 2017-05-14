//
//  ViewController.swift
//  War
//
//  Created by Darius Little on 5/13/17.
//  Copyright © 2017 Darius Little. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var RightImageView: UIImageView!
    @IBOutlet weak var RightScoreLabel: UILabel!
    var rightScore = 0
    
    @IBOutlet weak var LeftImageView: UIImageView!
    @IBOutlet weak var LeftScoreLabel: UILabel!
    var leftScore = 0
    
    let cardNames = ["card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king","ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: UIButton) {
        print("Deal Tapped")
        //randomize left number from 0-12:2-king
        let leftNumber:Int = Int(arc4random_uniform(13))
        
        //set left image
        LeftImageView.image = UIImage(named: cardNames[leftNumber])
       
        //randomize right number from 0-12:2-king
        let rightNumber:Int = Int(arc4random_uniform(13))
        
        //set right image
        RightImageView.image = UIImage(named: cardNames[rightNumber])
        
        
        //compare card numbers
        if leftNumber > rightNumber{
            //left card wins
            //left value incremented
            leftScore += 1
            
            //update label
            LeftScoreLabel.text = String(leftScore)
            
        }else if leftNumber == rightNumber{
            //its a tie
        
        }else{
            //right card wins
            //right value incremented
            rightScore += 1
            
            //update the  label
             RightScoreLabel.text = String(rightScore)
        }
        if leftScore == 20{
            print("You Win")
        LeftScoreLabel.text = String("Winner")
        }else if rightScore == 20{
            print("You Lose")
            RightScoreLabel.text = String("Winner")
        }
    }

}

