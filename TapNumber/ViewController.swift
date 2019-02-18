//
//  ViewController.swift
//  TapNumber
//
//  Created by Yasuko Namikawa on 2019/02/18.
//  Copyright © 2019年 Yasuko Namikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var timerLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    
    @IBOutlet var button: [UIButton]!
        
    var timerCounter: Float = 0.0
    
    var score: Int = 0
    var numberArray = [Int]()
    
    var timer: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        shuffle()
        displayNum()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(self.count), userInfo: nil, repeats: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultView" {
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.score = self.score
        }
    }
    
    @objc func count() {
        timerCounter += 0.01
        timerLabel.text = String(format: "%.2f", 15.0 - timerCounter)
        
        if timerCounter >= 15.0 {
            timerLabel.text = "0.0"
            timerCounter = 0.0
            segueToResultView()
        }
        
    }
    
    func segueToResultView() {
        performSegue(withIdentifier: "toResultView", sender: nil)
    }
    
    func shuffle() {
        // 一時的に数字を保存しておく配列
        var tmpArray: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8]
        while tmpArray.count > 0 {
            let index = Int(arc4random_uniform(UInt32(tmpArray.count - 1)))
            numberArray.append(tmpArray[index])
            tmpArray.remove(at: index)
        }
        print(numberArray)
    }
    
    func displayNum() {
        for i in 0...8 {
            button[i].titleLabel?.text = String(numberArray[i])
        }
    }
    
    @IBAction func check(sender: UIButton){
        
    }


}

