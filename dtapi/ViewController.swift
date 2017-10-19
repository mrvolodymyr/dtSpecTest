//
//  ViewController.swift
//  dtapi
//
//  Created by Volodymyr on 10/10/17.
//  Copyright © 2017 Volodymyr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        
//        DispatchQueue.main.sync {
//            HTTPService.logIn()
//
//        }
        HTTPService().logIn { (b) in
            if b {
                guard let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainViewController") as? MainViewController else  { return }
                self.navigationController?.pushViewController(mainVC, animated: true)
                
            }
        }
        
    }


}
