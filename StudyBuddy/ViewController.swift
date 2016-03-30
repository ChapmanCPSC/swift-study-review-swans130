//
//  ViewController.swift
//  StudyBuddy
//
//  Created by Chase Swanstrom on 3/29/16.
//  Copyright © 2016 SwanInc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    
    var count = 30
    var random : Int = 0
    
    var words: [String] = ["Let v.s. Var", "Computed Initializers", "Computed Variables", "Setter Observers", "Functions", "External Parameters", "Default Parameters", "Anonymous Functions", "Optional Chaining", "Failable Initializers", "Casting", "Class Methods", "Extensions", "Enumeration", "Error Handling", "Dictionaries", "Conditional Binding", "Protocols", "Inheritance", "Structs", "Enums", "Subscripts", "Setter Observers"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
            setTimer()
        
            }
    
    func setTimer() {
        
        NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector ("update"), userInfo: nil, repeats: true)
    }
    
    func update() {
        if(count >= 0) {
            timerLabel.text = String(count--)
        }
        else {
            count = 30
            updateWord()
        }
    }
    
    func updateWord() {
        
        random = Int(rand()%23)
        topicLabel.text=String(words[random])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButton(sender: AnyObject) {
        count = 30
        updateWord()
        
    }

}

