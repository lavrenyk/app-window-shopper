//
//  ViewController.swift
//  window-shopper
//
//  Created by MoHapX on 25.04.2018.
//  Copyright © 2018 R'systems ltd. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtFld!
    @IBOutlet weak var priceTxt: CurrencyTxtFld!
    @IBOutlet weak var resultLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcBtn.setTitle("Рассчитать", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        
        
    }

    @objc func calculate() {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                
                resultLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price)) ч"
                
            }
        }
    
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        wageTxt.text = ""
        priceTxt.text = ""
        
        resultLbl.isHidden = true
    }
    
}

