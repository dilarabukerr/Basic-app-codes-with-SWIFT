//
//  ViewController.swift
//  catchGameApp
//
//  Created by Dilara Büker on 9.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var score = 0
    var timer = Timer()
    var counter = 0
    var rickArray = [UIImageView]()
    var hideTimer = Timer()
    var highScore = 0
    
    
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    @IBOutlet weak var rick1: UIImageView!
    @IBOutlet weak var rick2: UIImageView!
    @IBOutlet weak var rick3: UIImageView!
    @IBOutlet weak var rick4: UIImageView!
    @IBOutlet weak var rick5: UIImageView!
    @IBOutlet weak var rick6: UIImageView!
    @IBOutlet weak var rick7: UIImageView!
    @IBOutlet weak var rick8: UIImageView!
    @IBOutlet weak var rick9: UIImageView!
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        scoreLabel.text = "Score: \(score)"
        
        //high score kontrol
        let highscoreCheck = UserDefaults.standard.object(forKey: "highscore")
        
        //saklanan yüksek skor boşsa
        if highscoreCheck == nil {
            highScore = 0
            highScoreLabel.text = "Highscore: \(highScore)"
        }
        
        if let newScore = highscoreCheck as? Int {
            highScore = newScore
            highScoreLabel.text = "Highscore: \(highScore)"
        }
        
        
        //kullanıcının image üzerine tıklamasını etkinleştiriyor.
        rick1.isUserInteractionEnabled = true
        rick2.isUserInteractionEnabled = true
        rick3.isUserInteractionEnabled = true
        rick4.isUserInteractionEnabled = true
        rick5.isUserInteractionEnabled = true
        rick6.isUserInteractionEnabled = true
        rick7.isUserInteractionEnabled = true
        rick8.isUserInteractionEnabled = true
        rick9.isUserInteractionEnabled = true
        
        
        let tanimlayici1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tanimlayici2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tanimlayici3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tanimlayici4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tanimlayici5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tanimlayici6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tanimlayici7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tanimlayici8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tanimlayici9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        rick1.addGestureRecognizer(tanimlayici1)
        rick2.addGestureRecognizer(tanimlayici2)
        rick3.addGestureRecognizer(tanimlayici3)
        rick4.addGestureRecognizer(tanimlayici4)
        rick5.addGestureRecognizer(tanimlayici5)
        rick6.addGestureRecognizer(tanimlayici6)
        rick7.addGestureRecognizer(tanimlayici7)
        rick8.addGestureRecognizer(tanimlayici8)
        rick9.addGestureRecognizer(tanimlayici9)
        
        //tüm image'ları bir arrayde topladık.
        rickArray = [rick1,rick2,rick3,rick4,rick5,rick6,rick7,rick8,rick9]
        
                
        //timer
        
        counter = 10
        timeLabel.text = String(counter)

        timer = Timer.scheduledTimer(timeInterval: 1, target: self , selector: #selector(countDown), userInfo: nil , repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hideRick) , userInfo: nil, repeats: true)
        
        hideRick()

    }
    
    @objc func hideRick () {
        
        for rick in rickArray {
            rick.isHidden = true //gizledik.
        }
        //0 ile 8 arasında rastgele sayı oluşturmuş olduk.
        let random = Int(arc4random_uniform(UInt32(rickArray.count-1))) // kaç tane rick varsa (index dizilerde 0'dan başladığı için bir eksiği olacak). (0-8 arası)..
        
        rickArray[random].isHidden = false //random bir şekilde rick image gösterecek. (gizliliği false ettik).
        
    }
    
    //image tıklanırsa scoreu artıran fonk.
    @objc func increaseScore () {
        score += 1
        scoreLabel.text = "Score: \(score)"
    }
    
    @objc func countDown () {
        
        counter -= 1
        timeLabel.text = String(counter)
        
        if counter == 0 {
            timer .invalidate()//timer'ı durdur
            hideTimer.invalidate()
            
            for rick in rickArray {
                rick.isHidden = true //gizledik.
            }
            
            //High score
            if self.score > self.highScore {
                self.highScore = self.score
                highScoreLabel.text = "Highsore: \(self.highScore)"
                UserDefaults.standard.set(self.highScore, forKey: "highscore")
            }
            
            
            //Uyarı mesajı
            let alert = UIAlertController(title:"Zaman doldu!" , message: "Tekrar oynamak ister misin?", preferredStyle: UIAlertController.Style.alert)
            let OkButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.cancel, handler:nil)
            let replayButton = UIAlertAction(title: "Tekrar Oyna", style: UIAlertAction.Style.default, handler: { UIAlertAction in
                self.score = 0
                self.scoreLabel.text = "Score: \(self.score)"
                self.counter = 10
                self.timeLabel.text = String(self.counter)
                //score'u ve counter'ı resetledik
                
            //timer'ları baştan başlattık
            self.timer = Timer.scheduledTimer(timeInterval: 1, target: self , selector: #selector(self.countDown), userInfo: nil , repeats: true)
            self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.hideRick) , userInfo: nil, repeats: true)
                
            } )
            
            alert.addAction(OkButton)
            alert.addAction(replayButton)
            self.present(alert, animated: true)
        }
        
    }
}

