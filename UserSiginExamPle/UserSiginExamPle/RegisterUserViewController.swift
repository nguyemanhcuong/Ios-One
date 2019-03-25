//
//  RegisterUserViewController.swift
//  UserSiginExamPle
//
//  Created by cuongDeptrai on 3/17/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//

import UIKit

class RegisterUserViewController: UIViewController {
    
    @IBOutlet var repeatPasswordTextField: UITextField!
    @IBOutlet var passWordTextFiled: UITextField!
    @IBOutlet var emailAddressTextField: UITextField!
    @IBOutlet var LastNameTextField: UITextField!
    @IBOutlet var FirstNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func CancleButtonTapped(_ sender: UIButton) {
        print("Cacle button Tapped")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func SiginUpButtonTapped(_ sender: UIButton) {
        print("Sign up button tapped")
      // Validate required fields are not empty
        
        if (FirstNameTextField.text?.isEmpty)! || (LastNameTextField.text?.isEmpty)! || (emailAddressTextField.text?.isEmpty)! || (passWordTextFiled.text?.isEmpty)! {
            
            // Display Alert message and return
            displayMessage(userMessage: "All fields are quired to fill in ")
            return
          }
        // Validate password
        if
            ((passWordTextFiled.text?.elementsEqual(repeatPasswordTextField.text!))! != true ) {
            
            // Dispaly elaert ,essage and return
            displayMessage(userMessage: "Please make sure that password match")
            return
        }
        
        // create Activity Indicator
        
        let myActivityIndicator = UIActivityIndicatorView(style: .gray)
        
        // Position Activity Indicator in the centre of the main View
        myActivityIndicator.center = view.center
        myActivityIndicator.hidesWhenStopped = false
        myActivityIndicator.startAnimating()
        
        view.addSubview(myActivityIndicator)
        // Send HTTp Request to Register user
        let myUrl = URL(string: "http://localhost:8080/api/users")
        var request = URLRequest(url: myUrl!)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "content-type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let postSring = ["firstName" : FirstNameTextField.text! ,
                         "lastName":LastNameTextField.text! ,
                         "userName": emailAddressTextField.text! ,
        "userPassword": passWordTextFiled.text! ,] as [String : String]
        do {
             request.httpBody = try JSONSerialization.data(withJSONObject: postSring, options: .prettyPrinted)
            
        }catch let error  {
            print(error.localizedDescription)
            displayMessage(userMessage: "Some went wrong. try again")
            return
        }
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            self.removeActivityIndicator(activityIndicator: myActivityIndicator)
            
            if error != nil {
                self.displayMessage(userMessage: "Could not Successfuly perform this request . Please try again later")
                
                print("error = \(String(describing: error))")
                return
            }
            
            // Let's Convert response sent from a server side code to a NSDictionary Object:
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? NSDictionary
                if let pareJSON = json {
                    let userId = pareJSON["userId"] as? String
                    print("User id : \(String(describing: userId!))")
                    
                    if ( userId?.isEmpty)! {
                        self.displayMessage(userMessage: "Could not Successfuly perform this request . Please try again later ")
                        return
                    } else {
                        
                         self.displayMessage(userMessage: "Successfully Resgister a New Account . Please procedd to Sign in ")
                    }
                    
                }else {
                    self.displayMessage(userMessage: "Could not Successfuly perform this request . Please try again later ")
                }
                
                
            }catch {
                self.removeActivityIndicator(activityIndicator: myActivityIndicator)
                self.displayMessage(userMessage: "Could not Successfuly perform this request . Please try again later ")
            }
            
        }
        task.resume()
    }
    
    func displayMessage(userMessage: String) -> Void {
        DispatchQueue.main.async {
            let alertControoler = UIAlertController(title: "Alert", message: userMessage, preferredStyle: .alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction) in
                
                // code in this block will trigger when ok button Tapped
               print("OK button tapped")
                
                DispatchQueue.main.async {
                    self.dismiss(animated: true, completion: nil)
                }
            })
            alertControoler.addAction(OKAction)
            self.present(alertControoler, animated: true, completion: nil)
        }
    }
    
    func removeActivityIndicator(activityIndicator: UIActivityIndicatorView){
        DispatchQueue.main.async {
            activityIndicator.stopAnimating()
            activityIndicator.removeFromSuperview()
        }
    }
}
