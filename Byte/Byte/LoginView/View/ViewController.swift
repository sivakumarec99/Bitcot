//
//  ViewController.swift
//  Byte
//
//  Created by Sivakumar R on 16/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var login: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        
        
        
        
    }
    
    @IBAction func loginBtnAction(){
  
        Api().loginAPICall(userName: userName.text ?? "", password: passwordText.text ?? "") { retunBool in
            
            if retunBool {
                
                let alertCotriler = UIAlertController()

                let action = UIAlertAction(title: "Result Suscess", style: .default)
                
                alertCotriler.addAction(action)
                
                self.present(alertCotriler, animated: true)
                
            }else{
                
                let alertCotriler = UIAlertController()

                let action = UIAlertAction(title: "Result Fali", style: .default)
                    
                alertCotriler.addAction(action)
                    
                self.present(alertCotriler, animated: true)
            }

        }
  
    }

}

