//
//  ViewController.swift
//  Will you be my girlfriend
//
//  Created by Magzhan Zhumaly on 23.01.2024.
//

import UIKit
import AVFoundation
//import SwiftyGif

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var upperLabel: UILabel!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
//    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var lowerImageView: UIImageView!
    @IBOutlet weak var yesHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var yesWidthConstraint: NSLayoutConstraint!
    
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
        

        let gif = UIImage.gifImageWithName("giphy")
        imageView.image = gif
        
        let gif2 = UIImage.gifImageWithName("giphy-2021-gifs-and-clips-animation-itsnicethat-02")
        lowerImageView.image = gif2

//        if let path = Bundle.main.path(forResource: "big-time-rush-boyfriend", ofType: "mp3") {
        if let path = Bundle.main.path(forResource: "Lana Del Rey - Say Yes To Heaven (Sped Up) (kazmuz.kz)", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
            } catch {
                print("Error initializing AVAudioPlayer: \(error)")
            }
        }
        
        
        audioPlayer?.play()

        timer = Timer.scheduledTimer(timeInterval: 2 * 60 + 38, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true) // with snoop dogg

//        upperLabel.textC/olor = .senyaFur // UIColor(named: "RedBackground")
        
                
        view.backgroundColor = .white
        
        noButton.setTitle("No", for: .normal)
        noButton.setTitleColor(.white, for: .normal)
        noButton.titleLabel?.font = Fonts.title2Regular22.font
        noButton.backgroundColor = Colors.danger400.color

        noButton.layer.cornerRadius = 5
        
        yesButton.setTitle("Yes", for: .normal)
        yesButton.setTitleColor(.white, for: .normal)
        yesButton.titleLabel?.font = Fonts.title2Regular22.font
        
        yesButton.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: fontSize) ?? .systemFont(ofSize: fontSize)

        yesButton.backgroundColor = Colors.success400.color
        yesButton.layer.cornerRadius = 5
    }
    
    var fontSize = 22.0
    
    @objc func timerAction() {
        audioPlayer?.play()
    }

    @IBAction func yesButtonTapped(_ sender: Any) {
        Vibration.success.vibrate()
    }
        
    @IBAction func noButonTapped(_ sender: Any) {
        increase()
        changeNoText()
    }
    
    func increase() {
        yesHeightConstraint.constant *= 1.1
        yesWidthConstraint.constant *= 1.1
        
        fontSize *= 1.1
        yesButton.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: fontSize) ?? .systemFont(ofSize: fontSize)
        
//        print("fontSize = \(fontSize)")
    }
    
    var currentYesIndex = 0

    
    func changeNoText() {
    
        var randomIndex = Int.random(in: 0..<noMessageValues.count)
        
        while randomIndex == currentYesIndex {
            randomIndex = Int.random(in: 0..<noMessageValues.count)
        }
        
        noButton.setTitle(noMessageValues[randomIndex].str, for: .normal)
        currentYesIndex = randomIndex
    }

}
