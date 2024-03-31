//
//  SecondViewController.swift
//  Will you be my valentines
//
//  Created by Magzhan Zhumaly on 04.02.2024.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var firework: UIImageView!
    
    @IBOutlet weak var firework2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gif = UIImage.gifImageWithName("swing-grey-cat")
        imageView.image = gif
        
        let gif2 = UIImage.gifImageWithName("41e74b0f91b7cb7df6b73e34ae8528a4")
        firework.image = gif2
        firework2.image = gif2

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
