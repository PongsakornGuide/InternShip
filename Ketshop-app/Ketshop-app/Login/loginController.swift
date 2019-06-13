//
//  loginController.swift
//  Ketshop-app
//
//  Created by Guide on 15/5/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class loginController: UIViewController {

    @IBOutlet weak var imageAlertGreen1: UIImageView!

    @IBOutlet weak var imageAlertRed1: UIImageView!
    @IBOutlet weak var imageAlertRed: UIImageView!
//    @IBOutlet weak var imageAlert: UIImageView!
    
    @IBOutlet weak var imageAlertGreen: UIImageView!
    
    @IBOutlet weak var domainTextfield: UITextField!
    @IBOutlet weak var emailAddressTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!

    
    @IBAction func actionSignin(_ sender: UIButton) {
        
    
        let providedDomain = domainTextfield.text
        let providedEmailAddress = emailAddressTextfield.text
        let providedPassword = passwordTextfield.text
        
        let isDomainValid = isValidDomain(domainString: providedDomain!)
        
        
        let isPasswordValid = isValidPassword(Password: providedPassword!)
        let isEmailAddressValid = isValidEmailAddress(emailAddressString: providedEmailAddress!)
//        let checkPassword = passwordTextfield.text
//        let chk = vlidate(text: checkPassword!)
//
        if isEmailAddressValid && isPasswordValid && isDomainValid{
            print("Email address is valid ")
            performSegue(withIdentifier: "homeSegus", sender: nil)
        }else{
            print("Email address is not valid")
            displayAlertMessage(messageToDisplay: "Email address is not valid")
        }

    }
    
    func isValidDomain(domainString: String) -> Bool {
        var returnValue = true
        let check : String = "com"
        let domainRegEx = "[www]+.[A-Z0-9a-z]+[A-Za-z0-9.-]+\([check])"
        do {
            let regex = try NSRegularExpression(pattern: domainRegEx)
            let nsString = domainString as NSString
            let results = regex.matches(in: domainString, range: NSRange(location: 0, length: nsString.length))
            
            if (results.count == 0)
            {
                returnValue = false
            }
            
        } catch let error as NSError {
            print("invalid regex: \(error.localizedDescription)")
            returnValue = false
        }
        return  returnValue
    }
    
    
    func isValidEmailAddress(emailAddressString: String) -> Bool {
        var returnValue = true
        let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+.[c]+[o]+[m]"
        do {
            let regex = try NSRegularExpression(pattern: emailRegEx)
            let nsString = emailAddressString as NSString
            let results = regex.matches(in: emailAddressString, range: NSRange(location: 0, length: nsString.length))
            
            if (results.count == 0)
            {
               returnValue = false
            }
            
        } catch let error as NSError {
            print("invalid regex: \(error.localizedDescription)")
            returnValue = false
        }
        return  returnValue
    }
    
    func isValidPassword(Password: String)->Bool{
        var returnValue = true
        if Password.count == 0{
            returnValue = false
        }
        return returnValue
    }
    
    func displayAlertMessage(messageToDisplay: String)
    {
        let alertController = UIAlertController(title: "Alert", message: messageToDisplay, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
            // Code in this block will trigger when OK button tapped.
            print("Ok button tapped");
        }
        alertController.addAction(OKAction)

        self.present(alertController, animated: true, completion:nil)
    }
    

    @IBAction func validateEditingChanged(_ sender: UITextField) {
        if vlidate(text: domainTextfield.text!){
            imageAlertGreen.isHidden = false
            imageAlertRed.isHidden = true
        }else {
            if !domainTextfield.text!.isEmpty{
                imageAlertGreen.isHidden = true
                imageAlertRed.isHidden = false
            }
            else{
                imageAlertGreen.isHidden = true
                imageAlertRed.isHidden = true
            }
        }
    }
    
    
    @IBAction func validateEmailChanged(_ sender: UITextField) {
        if isValidEmailAddress(emailAddressString: emailAddressTextfield.text!){
            imageAlertGreen1.isHidden = false
            imageAlertRed1.isHidden = true
        }else{
            if !emailAddressTextfield.text!.isEmpty{
                imageAlertGreen1.isHidden = true
                imageAlertRed1.isHidden = false
            }else{
                imageAlertGreen1.isHidden = true
                imageAlertRed1.isHidden = true
            }
        }
    }
    
    func vlidate(text: String) -> Bool{
        var returnValue = true
        let domainRegEx = "[www]+.[A-Z0-9a-z]+[A-Za-z0-9.-]+.[c]+[o]+[m]"
        do {
            let regex = try NSRegularExpression(pattern: domainRegEx)
            let nsString = text as NSString
            let results = regex.matches(in: text, range: NSRange(location: 0, length: nsString.length))
            if (results.count == 0)
            {
                returnValue = false
            }
        } catch let error as NSError {
            print("invalid regex: \(error.localizedDescription)")
            returnValue = false
        }
        return  returnValue
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageAlertRed.isHidden = true
        imageAlertGreen.isHidden = true
        
//
        imageAlertRed1.isHidden = true
        imageAlertGreen1.isHidden = true
        //Add
//        let z = self.addNUmber(x: 10, y: 67)
//        self.domainTextfield.text = "Anzer : \(z)"
        
    }
    
//    func addNUmber(x:Int , y:Int)->Int{
//        let z = x + y
//        return z
//    }
    
}
