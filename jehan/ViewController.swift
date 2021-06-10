//
//  ViewController.swift
//  jehan
//
//  Created by Prashant Mohite on 09/06/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton){
        let alertController = UIAlertController(title: "Welcome Message", message: "Welcome to my class", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }

}

