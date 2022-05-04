//
//  DadViewController.swift
//  IKid
//
//  Created by Chuteng Li on 2022/5/3.
//

import UIKit

class DadViewController: UIViewController {

    @IBOutlet weak var cardBtn: UIButton!
    
    var isOpen = false
    
    let joke = "How many programmers it takes to screw a bulb"
    let punchLine = "None. It's a hardware problem"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        cardBtn.setTitle(joke, for: .normal)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
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
    
}
