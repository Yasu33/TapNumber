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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toFirstView() {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
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
