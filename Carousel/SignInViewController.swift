//
//  SignInViewController.swift
//  Carousel
//
//  Created by Connor McSheffrey on 9/26/15.
//  Copyright © 2015 Connor McSheffrey. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var submitButtonsContainerView: UIView!
    
    
    let alertController = UIAlertController(title: "Error", message: "Email and password are required fields", preferredStyle: .Alert)
    
    let incorrectUsernamePasswordAlertController = UIAlertController(title: "Error", message: "The email and password you entered did not match any users", preferredStyle: .Alert)
    
    var initialY: CGFloat!
    let offset: CGFloat = -175

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialY = submitButtonsContainerView.frame.origin.y
        
        // create an OK action
        let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
            // handle response here.
        }
        // add the OK action to the alert controller
        alertController.addAction(OKAction)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func onTouchSignIn(sender: AnyObject) {
        if (emailTextField.text!.characters.count == 0 && passwordTextField.text!.characters.count == 0) {
            presentViewController(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
            
            return
        }
    
        
        if (emailTextField.text! == "connor@dropbox.com" && passwordTextField.text! == "password") {
            delay(2) {
                let next = self.storyboard?.instantiateViewControllerWithIdentifier("welcomeViewController") as! welcomeViewController
                self.navigationController?.pushViewController(next, animated: true)
            }
            
        } else {
            delay(2) {
                self.presentViewController(self.alertController, animated: true) {
                    // optional code for what happens after the alert controller has finished presenting
                }
            }
        }
        
    }
    
    @IBAction func onTap(sender: UITapGestureRecognizer) {
        emailTextField.endEditing(true)
        passwordTextField.endEditing(true)
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        // On editing changed
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(rawValue: UInt(animationCurve << 16)), animations: {
            
                self.submitButtonsContainerView.frame.origin = CGPoint(x: self.submitButtonsContainerView.frame.origin.x, y: self.initialY + self.offset)
            
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(rawValue: UInt(animationCurve << 16)), animations: {
            
            self.submitButtonsContainerView.frame.origin = CGPoint(x: self.submitButtonsContainerView.frame.origin.x, y: self.initialY)
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
    }

}
