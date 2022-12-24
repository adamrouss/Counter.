//
//  ViewController.swift
//  counter
//
//  Created by AdamRouss on 24.12.2022.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var count = 0
    
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK plusButton
    
    @IBAction func buttonAction(_ sender: Any) {
        count = count + 1
        label.text = "\(count)"
        if count == 1 {
            minusButton.isHidden = false
        }
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.impactOccurred()
        }
    
    //MARK minusButton
    
    @IBAction func clearButton(_ sender: Any) {
        count = count - 1
        label.text = "\(count)"
        
        if count <= 0 {
            minusButton.isHidden = true
            let generator = UINotificationFeedbackGenerator()
                      generator.notificationOccurred(.error)
        }
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.impactOccurred()
    }
    }
