//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Глеб on 19.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var picker: UIDatePicker!
    @IBOutlet weak var resultButton: UIButton!
    private var numberOfDays = ""
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.layer.cornerRadius = 25
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        
        picker.maximumDate = Date()
        
        let birthday = sender.date
        guard birthday <= Date() else {numberOfDays = ""; return}
        let range = birthday..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
        
    }
    
    @IBAction func resultButtonTapped(_ sender: UIButton) {
        if numberOfDays == "" {
            infoLabel.text = "Произошла ошибка, выберите другую дату!"
        }
        else{
            infoLabel.text = "Вы отдалились уже на \(numberOfDays)"
        }
    }
}

