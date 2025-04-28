//
//  ViewController.swift
//  BMICalApp
//
//  Created by 平尾彩樹人 on 2025/04/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HeightTextField: UITextField!
    @IBOutlet weak var WeightTextField: UITextField!
    @IBOutlet weak var BMILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        HeightTextField.placeholder = "身長を入力してください"
        WeightTextField.placeholder = "体重を入力してください"
        
    }
    
    
    @IBAction func calcButtonAction(_ sender: Any) {
        let DoubleH = Double(HeightTextField.text!)
        let DoubleW = Double(WeightTextField.text!)
        BMILabel.text = calBMI(height: DoubleH!, weight: DoubleW!)
    }
    
    func calBMI(height: Double, weight: Double) -> String {
        
        let h = height/100
        let bmi = weight / (h * h)
        var result: String
        if bmi < 18.5 {
            result = "低体重"
        } else if bmi < 25 {
            result = "正常体重"
        } else if bmi < 30 {
            result = "過体重"
        } else {
            result = "肥満"
        }
        return result.description
    }


    
}

