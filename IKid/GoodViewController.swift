//
//  GoodViewController.swift
//  IKid
//
//  Created by Chuteng Li on 2022/5/3.
//

import UIKit

class GoodViewController: UIViewController {
    
    
    @IBOutlet weak var cardBtn: UIButton!
    
    var isOpen = false
    
    let joke = "Why do Java programmers have to wear glasses"
    let punchLine = "Because they don't C#"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardBtn.setTitle(joke, for: .normal)
        // Do any additional setup after loading the view.
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
