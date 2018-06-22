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
    
    let slotAnimationClubs: [UIImage] = [
        UIImage(named: "card_suits1.png")!,
        UIImage(named: "card_suits2.png")!,
        UIImage(named: "card_suits3.png")!,
        UIImage(named: "card_suits4.png")!,
        UIImage(named: "card_suits5.png")!,
        UIImage(named: "card_suits6.png")!,
        UIImage(named: "card_suits7.png")!,
        UIImage(named: "card_suits8.png")!,
        UIImage(named: "card_suits9.png")!,
        UIImage(named: "card_suits10.png")!,
        ]
    
    let slotAnimationHearts: [UIImage] = [
        UIImage(named: "card_suits4.png")!,
        UIImage(named: "card_suits5.png")!,
        UIImage(named: "card_suits6.png")!,
        UIImage(named: "card_suits7.png")!,
        UIImage(named: "card_suits8.png")!,
        UIImage(named: "card_suits9.png")!,
        UIImage(named: "card_suits10.png")!,
        UIImage(named: "card_suits1.png")!,
        UIImage(named: "card_suits2.png")!,
        UIImage(named: "card_suits3.png")!,
        ]
    
    let slotAnimationDiamonds: [UIImage] = [
        UIImage(named: "card_suits6.png")!,
        UIImage(named: "card_suits7.png")!,
        UIImage(named: "card_suits8.png")!,
        UIImage(named: "card_suits9.png")!,
        UIImage(named: "card_suits10.png")!,
        UIImage(named: "card_suits1.png")!,
        UIImage(named: "card_suits2.png")!,
        UIImage(named: "card_suits3.png")!,
        UIImage(named: "card_suits4.png")!,
        UIImage(named: "card_suits5.png")!,
        ]
    
    let slotAnimationSpades: [UIImage] = [
        UIImage(named: "card_suits9.png")!,
        UIImage(named: "card_suits10.png")!,
        UIImage(named: "card_suits1.png")!,
        UIImage(named: "card_suits2.png")!,
        UIImage(named: "card_suits3.png")!,
        UIImage(named: "card_suits4.png")!,
        UIImage(named: "card_suits5.png")!,
        UIImage(named: "card_suits6.png")!,
        UIImage(named: "card_suits7.png")!,
        UIImage(named: "card_suits8.png")!,
        ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func btn_actionPlus(_ sender: Any) {
        betValue += 10.00
        lblBetAmount.text = "$\(betValue)"
    }
    
    @IBAction func btn_actionBet(_ sender: Any) {
        
        let randomSuitRight = Int(arc4random_uniform(3))+1
        let randomSuitLeft = Int(arc4random_uniform(3))+1
        let randomSuitCenter = Int(arc4random_uniform(3))+1
        
        switch randomSuitRight {
        case 1:
            imgRightSlot.animationImages = slotAnimationSpades
            imgRightSlot.animationDuration = 1.0
            imgRightSlot.animationRepeatCount = 4
            imgRightSlot.image = UIImage(named: "frame-9.png")
            imgRightSlot.startAnimating()
        
        case 2:
            imgRightSlot.animationImages = slotAnimationClubs
            imgRightSlot.animationDuration = 1.0
            imgRightSlot.animationRepeatCount = 4
            imgRightSlot.image = UIImage(named: "frame-1.png")
            imgRightSlot.startAnimating()
            
        case 3:
            imgRightSlot.animationImages = slotAnimationDiamonds
            imgRightSlot.animationDuration = 1.0
            imgRightSlot.animationRepeatCount = 4
            imgRightSlot.image = UIImage(named: "frame-6.png")
            imgRightSlot.startAnimating()
            
        default:
            imgRightSlot.animationImages = slotAnimationHearts
            imgRightSlot.animationDuration = 1.0
            imgRightSlot.animationRepeatCount = 4
            imgRightSlot.image = UIImage(named: "frame-4.png")
            imgRightSlot.startAnimating()
        }
        
        switch randomSuitLeft {
        case 1:
            imgLeftSlot.animationImages = slotAnimationSpades
            imgLeftSlot.animationDuration = 1.0
            imgLeftSlot.animationRepeatCount = 4
            imgLeftSlot.image = UIImage(named: "frame-9.png")
            imgLeftSlot.startAnimating()
            
        case 2 :
            imgLeftSlot.animationImages = slotAnimationClubs
            imgLeftSlot.animationDuration = 1.0
            imgLeftSlot.animationRepeatCount = 4
            imgLeftSlot.image = UIImage(named: "frame-1.png")
            imgLeftSlot.startAnimating()
            
        case 3:
            imgLeftSlot.animationImages = slotAnimationDiamonds
            imgLeftSlot.animationDuration = 1.0
            imgLeftSlot.animationRepeatCount = 4
            imgLeftSlot.image = UIImage(named: "frame-6.png")
            imgLeftSlot.startAnimating()
        
        default:
            imgLeftSlot.animationImages = slotAnimationHearts
            imgLeftSlot.animationDuration = 1.0
            imgLeftSlot.animationRepeatCount = 4
            imgLeftSlot.image = UIImage(named: "frame-4.png")
            imgLeftSlot.startAnimating()
        }
        
        switch randomSuitCenter {
        case 1:
            imgCenterSlot.animationImages = slotAnimationSpades
            imgCenterSlot.animationDuration = 1.0
            imgCenterSlot.animationRepeatCount = 4
            imgCenterSlot.image = UIImage(named: "frame-9.png")
            imgCenterSlot.startAnimating()
        
        case 2:
            imgCenterSlot.animationImages = slotAnimationClubs
            imgCenterSlot.animationDuration = 1.0
            imgCenterSlot.animationRepeatCount = 4
            imgCenterSlot.image = UIImage(named: "frame-1.png")
            imgCenterSlot.startAnimating()
            
        case 3:
            imgCenterSlot.animationImages = slotAnimationDiamonds
            imgCenterSlot.animationDuration = 1.0
            imgCenterSlot.animationRepeatCount = 4
            imgCenterSlot.image = UIImage(named: "frame-6.png")
            imgCenterSlot.startAnimating()
            
        default:
            imgCenterSlot.animationImages = slotAnimationHearts
            imgCenterSlot.animationDuration = 1.0
            imgCenterSlot.animationRepeatCount = 4
            imgCenterSlot.image = UIImage(named: "frame-4.png")
            imgCenterSlot.startAnimating()
        }
        
        totalValue = resultFinder(a: randomSuitRight, b: randomSuitCenter, c: randomSuitLeft, win: betValue, total: totalValue)
        
        lblUserMoney.text = "You have $\(totalValue)"
        
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
        
        
        if (totalValue <= 0 ){
            present(alertControllerLose, animated: true, completion: nil)
        } else if (totalValue >= 100000.00){
            present(alertControllerWin, animated: true, completion: nil)
        }
    }
    
    
    func resultFinder(a:Int, b:Int, c:Int, win:Double, total:Double) -> Double{
        var result = win
        var total1 = total
        if (a == b && b == c && c == 1){
            result *= 20
            total1 += result
        } else if (a == b && b == c && c == 2){
            result *= 10
            total1 += result
        } else if (a == b && b == c && c == 3){
            result *= 12
            total1 += result
        } else if (a == b && b == c && c == 4){
            result *= 8
            total1 += result
        } else {
            total1 -= result
        }
        return total1
    }
   
    
}
