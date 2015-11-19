//
//  ResetPasswordViewController.swift
//  ParseDemo
//
//  Created by Rumiya Murtazina on 7/31/15.
//  Copyright (c) 2015 abearablecode. All rights reserved.
//

import UIKit
//====== 1118_2015, add
import Parse

class ResetPasswordViewController: UIViewController {

    
    @IBOutlet weak var resetPasswordTextField: UITextField!
    
    @IBAction func resetPasswdAction(sender: UIButton) {
        let email = self.resetPasswordTextField.text
        let finalEmail = email!.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        
        // 傳送重設密碼的要求
        PFUser.requestPasswordResetForEmailInBackground(finalEmail)
        
        let alert = UIAlertController (title: "Password Reset", message: "An email containing information on how to reset your password has been sent to " + finalEmail + ".", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        /*
        if let _ = touches.first {
        self.view.endEditing(true)
        }
        */
        
        self.view.endEditing(true)
        
        super.touchesBegan(touches , withEvent:event)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
