//
//  ViewController.swift
//  NavigationBarApp
//
//  Created by MasayaFujioka on 2021/08/02.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
    }
    
    
    
    @IBAction func next(_ sender: Any) {
        
        let nextVC = storyboard?.instantiateViewController(identifier: "next") as! NextViewController
        nextVC.name = textField.text!
        
        navigationController?.pushViewController(nextVC, animated: true)
        
        textField.text = ""
    }
    
    
    
//    キーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
    }
    

}

