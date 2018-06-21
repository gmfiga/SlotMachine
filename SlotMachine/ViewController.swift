//
//  ViewController.swift
//  SlotMachine
//
//  Created by Administrator on 6/21/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblUserMoney: UILabel!
    @IBOutlet weak var imgLeftSlot: UIImageView!
    @IBOutlet weak var imgCenterSlot: UIImageView!
    @IBOutlet weak var imgRightSlot: UIImageView!
    @IBOutlet weak var btnStart: UIButton!
    @IBOutlet weak var btnPlus: UIButton!
    @IBOutlet weak var lblBetAmount: UILabel!
    @IBOutlet weak var btnBet: UIButton!
    
    var betValue:Double = 0.00
    var totalValue:Double = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btn_actionPlus(_ sender: Any) {
        betValue += 10.00
        lblBetAmount.text = "$\(betValue)"
    }
    
    @IBAction func btn_actionBet(_ sender: Any) {
        
        
        imgLeftSlot.startAnimating()
        imgRightSlot.startAnimating()
        imgCenterSlot.startAnimating()
        
        
        endGamePopUp()
        
        
        
    }
    
    @IBAction func btn_actionStart(_ sender: Any) {
        
            let alertController = UIAlertController(title: "Starting Money",
                                                    message: "How much money do you want to have?",
                                                    preferredStyle: UIAlertControllerStyle.alert)
            alertController.addTextField(configurationHandler: {(moneyField)in
                moneyField.text=""
                moneyField.placeholder="Money:"
            })
            
            alertController.addAction(UIAlertAction(title:"OK",style:.default,
                                                    handler: {[weak alertController](_) in
                                                        let moneyField = alertController?.textFields![0]
                                                        let moneyStr: String = moneyField?.text as! String
                                                        self.totalValue = Double(moneyStr)!
                                                        self.lblUserMoney.text="You have $\(self.totalValue)"
                                                        
            }))
        present(alertController,animated: true, completion: nil)
        btnStart.isEnabled = false
}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func endGamePopUp (){
        let alertControllerWin = UIAlertController(title: "YOU WON!",
                                                   message: "Congratulations! You have reached the goal of $1000.00 and won the game!",
                                                   preferredStyle: UIAlertControllerStyle.alert)
        alertControllerWin.addAction(UIAlertAction(title: "Thanks!",
                                                   style: UIAlertActionStyle.cancel,
                                                   handler: nil))
        
        let alertControllerLose = UIAlertController(title: "YOU LOST",
                                                    message: "You really need help! You managed to spend all your money on gambling...what are you gona tell to your family?",
                                                    preferredStyle: UIAlertControllerStyle.alert)
        alertControllerLose.addAction(UIAlertAction(title: "I'll find professional assistance",
                                                    style: UIAlertActionStyle.cancel,
                                                    handler: nil))
        
        
        if (totalValue == 0 ){
            present(alertControllerLose, animated: true, completion: nil)
        } else if (totalValue >= 100000.00){
            present(alertControllerWin, animated: true, completion: nil)
        }
    }
    
    
}
