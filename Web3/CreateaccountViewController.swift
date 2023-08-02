//
//  CreateaccountViewController.swift
//  Web3
//
//  Created by DA M1 MAC 89 on 2023/08/02.
//

import UIKit
import Firebase

class CreateaccountViewController: UIViewController {

    @IBOutlet weak var signuptextfield: UITextField!
    @IBOutlet weak var signuppasswordtextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func signupclicked(_ sender: UIButton) {
        guard let username = signuptextfield.text else {return }
        guard let password = signuppasswordtextfield.text else {return}
        
        Auth.auth().createUser(withEmail: username, password: password) { firebaseresult, error in
            if let e = error {
                
                print( "error")
                
            }
            else {
                //go to home screen
                
                
            }
                                                                                                        
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
