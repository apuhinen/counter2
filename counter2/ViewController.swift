//
//  ViewController.swift
//  counter2
//
//  Created by ak on 4.7.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var historyTextView: UITextView!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = "Значение счётчика: \(counter)"
        historyTextView.text = "История изменений:\n"
    }

    
    @IBAction func resetCounnt(_ sender: UIButton) {
        counter = 0
        fieldsUpdate(msgTV: "значение сброшено")
    }

    

    @IBAction func plusPressed(_ sender: UIButton) {
        counter += 1
        fieldsUpdate(msgTV: "\(counter)")
    }
    
    
    @IBAction func minusPressed(_ sender: UIButton) {
        if (counter > 0) {
            counter -= 1
            fieldsUpdate(msgTV: "\(counter)")
        } else {
            fieldsUpdate(msgTV: "попытка уменьшить значение счётчика ниже 0")
        }
        
        
    }
    
    func fieldsUpdate(msgTV :  String) {
        // get the current date and time
        let currentDateTime = Date()

        // initialize the date formatter and set the style
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        formatter.dateStyle = .long

        // get the date time String from the date object
        let myDate = formatter.string(from: currentDateTime) // October 8, 2016 at 10:48:53 PM
        historyTextView.text += "\(myDate) \(msgTV)\n"
        counterLabel.text = "Значение счётчика: \(counter)"
        
        
    }
    
}

