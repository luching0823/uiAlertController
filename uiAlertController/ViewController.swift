//
//  ViewController.swift
//  uiAlertController
//
//  Created by 廖昱晴 on 2021/2/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(_ sender: UIButton) {
        let alert = UIAlertController(title: "Hello", message: "How are you?", preferredStyle: .actionSheet)
        let okAction = UIAlertAction(title: "OK", style: .default)
        let helloAction = UIAlertAction(title: "Say Hello", style: .destructive) { (action) in
            print("Say Hello")
            self.dismiss(animated: true, completion: nil)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("Cancel")
            self.dismiss(animated: true, completion: nil)
        }
        
        alert.addAction(okAction)
        alert.addAction(helloAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
    
}

