//
//  ViewController.swift
//  HarryPotterFans
//
//  Created by Nikita Kuznetsov on 4/17/23.
//

import UIKit

class LoginView: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBAction func enterButton(_ sender: Any) {
        performSegue(withIdentifier: "goMenuSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? MenuView else { return }
        dvc.login = loginTF.text
    }
    @IBAction func unwindSegueToLoginViewController(segue: UIStoryboardSegue){}
    
    // hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

