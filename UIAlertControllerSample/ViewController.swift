//
//  ViewController.swift
//  UIAlertControllerSample
//
//  Created by David Johnson on 10/12/17.
//  Copyright © 2017 27th Letter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let alert = UIAlertController(title: "AlertController Tutorial",
                                      message: "Submit something",
                                      preferredStyle: .alert)
        
        // Submit button
        let submitAction = UIAlertAction(title: "Submit", style: .default, handler: { (action) -> Void in
            // Get 1st TextField's text
            let textField = alert.textFields![0]
            print(textField.text!)
        })
        
        // Cancel button
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) -> Void in })
        
        // Add 1 textField and customize it
        alert.addTextField { (textField: UITextField) in
            textField.keyboardAppearance = .dark
            textField.keyboardType = .default
            textField.autocorrectionType = .default
            textField.placeholder = "Type something here"
            textField.clearButtonMode = .whileEditing
        }
        
        // Add action buttons and present the Alert
        alert.addAction(submitAction)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
        
        
        
//        let alert=UIAlertController(title: "Alert 2", message: "Two will win too", preferredStyle: UIAlertControllerStyle.alert);
//        //default input textField (no configuration...)
//        alert.addTextField(configurationHandler: nil);
//        //no event handler (just close dialog box)
//        alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.cancel, handler: nil));
//        //event handler with closure
//        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: {(action:UIAlertAction) in
//            let fields = alert.textFields!;
//            print("Yes we can: "+fields[0].text!);
//        }));
//        present(alert, animated: true, completion: nil);
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    

}

