//
//  ResultViewController.swift
//  TapNumber
//
//  Created by Yasuko Namikawa on 2019/02/18.
//  Copyright © 2019年 Yasuko Namikawa. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var score: Int = 0
    
    @IBOutlet var scoreLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = String(score)
    }
    
    @IBAction func toFirstView() {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
