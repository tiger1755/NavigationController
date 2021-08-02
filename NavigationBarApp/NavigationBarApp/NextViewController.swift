//
//  NextViewController.swift
//  NavigationBarApp
//
//  Created by MasayaFujioka on 2021/08/02.
//

import UIKit

class NextViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    var name = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = name
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = false
    }


}
