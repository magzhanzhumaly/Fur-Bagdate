//
//  ViewController.swift
//  Will you be my girlfriend
//
//  Created by Magzhan Zhumaly on 23.01.2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var upperLabel: UILabel!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    
    let sadSenyaValues = SadSenya.allCases
    let happySenyaValues = HappySenya.allCases
    let yesMessageValues = YesMessages.allCases
    let noMessageValues = NoMessages.allCases
    
    let missedSenya = MissedSenya.allCases
    
    var noTappedCount = 0
    var audioPlayer: AVAudioPlayer?

    var timer: Timer?

    lazy var viewWidth = Int(view.frame.width - 75)
    lazy var viewHeight = Int(view.frame.height - 100)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageLabel.numberOfLines = 0
//        if let path = Bundle.main.path(forResource: "big-time-rush-boyfriend", ofType: "mp3") {
        if let path = Bundle.main.path(forResource: "big-time-rush-snoop-dogg-boyfriend", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
            } catch {
                print("Error initializing AVAudioPlayer: \(error)")
            }
        }
        
        
        audioPlayer?.play()

        timer = Timer.scheduledTimer(timeInterval: 3 * 60 + 40, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true) // with snoop dogg
        
//        timer = Timer.scheduledTimer(timeInterval: 3 * 60 + 25, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true) // without snoop dogg


        upperLabel.textColor = .senyaFur // UIColor(named: "RedBackground")
        
        upperLabel.text = "Baga, will you be\nmy girlfriend?"
                
        view.backgroundColor = .white
        // Colors.danger200.color
        
        messageLabel.font = Fonts.body17.font
        messageLabel.textColor = .senyaFur // UIColor(named: "RedBackground")
        
        noButton.setTitle("No", for: .normal)
        noButton.setTitleColor(.white, for: .normal)
        noButton.titleLabel?.font = Fonts.title2Regular22.font
        noButton.backgroundColor = Colors.danger400.color

        noButton.layer.cornerRadius = 5
        
        yesButton.setTitle("Yes", for: .normal)
        yesButton.setTitleColor(.white, for: .normal)
        yesButton.titleLabel?.font = Fonts.title2Regular22.font
        yesButton.backgroundColor = Colors.success400.color
        yesButton.layer.cornerRadius = 5
                
//        noButton.frame = CGRect(x: view.frame.width / 2 - 75/2, y: view.frame.height / 2 + 300 / 2 + 75, width: 75, height: 50)
        
        noButton.frame = CGRect(x: view.frame.width / 2 - 75/2, y: 671, width: 75, height: 50)
    }
    
    
    @objc func timerAction() {
        audioPlayer?.play()
    }

//    НА МОМЕНТ ПРЕРЫВАНИЯ БЫЛО 30 МИНУТ!!
    @IBAction func yesButtonTapped(_ sender: Any) {
        printYesMessage()
        randomHappyImage()
        
        noTappedCount = 0

        Vibration.success.vibrate()
    }
    
    func printYesMessage() {
        var randomIndex = Int.random(in: 0..<yesMessageValues.count)
        
        while randomIndex == currentYesIndex {
            randomIndex = Int.random(in: 0..<yesMessageValues.count)
        }
        
        currentYesIndex = randomIndex
        messageLabel.text = yesMessageValues[randomIndex].str
    }
    
    func randomHappyImage() {
        var randomIndex = Int.random(in: 0..<happySenyaValues.count)
        
        while randomIndex == currentHappyIndex {
            randomIndex = Int.random(in: 0..<happySenyaValues.count)
        }
        
        currentHappyIndex = randomIndex
        
        imageView.image = happySenyaValues[randomIndex].img
    }
    

    var currentMissed: MissedSenya?
    var currentMissedIndex = 0

    @IBAction func noButonTapped(_ sender: Any) {
        
        currentMissed = missedSenya[currentMissedIndex]
                    
        noTappedCount += 1
        
        if noTappedCount >= 5 {
            
            didTapNo = true
            
            printNoMessage()
            randomSadImage()
            
            currentMissedIndex += 1
            
            if currentMissedIndex > 2 {
                currentMissedIndex = 0
            }
            
            Vibration.error.vibrate()
        } else {
                
            missIndex += 1
            
            if missIndex > 2 {
                missIndex = 0
            }
            
            
            imageView.image = currentMissed?.result.0
            messageLabel.text = currentMissed?.result.1
        }
     
        randomizePosition()

    }
    
    var currentNoIndex = 0
    var currentYesIndex = 0
    var currentHappyIndex = 0
    var currentSadIndex = 0
    
    var didTapNo = false
    var missIndex = 0
    
    func randomSadImage() {
        var randomIndex = Int.random(in: 0..<sadSenyaValues.count)
        
        while randomIndex == currentSadIndex {
            randomIndex = Int.random(in: 0..<sadSenyaValues.count)
        }
        
        currentSadIndex = randomIndex
        
        imageView.image = sadSenyaValues[randomIndex].img
    }
    
    func printNoMessage() {
        var randomIndex = Int.random(in: 0..<noMessageValues.count)
        
        while randomIndex == currentNoIndex {
            randomIndex = Int.random(in: 0..<noMessageValues.count)
        }
        
        currentNoIndex = randomIndex
        
        messageLabel.text = noMessageValues[randomIndex].str
    }

    
    func randomizePosition () {
        let randomXIndex = Int.random(in: 0..<viewWidth)
        let randomYIndex = Int.random(in: 50..<viewHeight)

        noButton.frame.origin.x = CGFloat(randomXIndex)
        noButton.frame.origin.y = CGFloat(randomYIndex)
    }
}
