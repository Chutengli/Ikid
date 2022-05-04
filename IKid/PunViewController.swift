//
//  PunViewController.swift
//  IKid
//
//  Created by Chuteng Li on 2022/5/3.
//

import UIKit

class PunViewController: UIViewController {

    @IBOutlet weak var cardBtn: UIButton!
    
    var isOpen = false
    
    
    let joke = "Did you hear about the guy whose whole left side was cut off?"
    let punchLine = "He’s all right now"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        cardBtn.setTitle(joke, for: .normal)

    }
    

    @IBAction func cardFlip(_ sender: Any) {
        if (isOpen) {
            isOpen = false;
            let image = UIImage(named: "background")
            cardBtn.setBackgroundImage(image, for: .normal)
            cardBtn.setTitle(joke, for: .normal)
            
            UIView.transition(with: cardBtn, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        } else {
            isOpen = true;
            let image = UIImage(named: "background")
            cardBtn.setBackgroundImage(image, for: .normal)
            cardBtn.setTitle(punchLine, for: .normal)
            
            UIView.transition(with: cardBtn, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
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
