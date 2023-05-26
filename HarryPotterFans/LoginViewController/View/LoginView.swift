//
//  ViewController.swift
//  HarryPotterFans
//
//  Created by Nikita Kuznetsov on 4/17/23.
//

import UIKit

class LoginView: UIViewController {
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTF.keyboardType = .asciiCapable
        enterButton.isHidden = true
        loginTF.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? MenuView else { return }
        dvc.login = loginTF.text
    }
    
    @IBAction func enterButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "goMenuSegue", sender: nil)
    }
    @IBAction func unwindSegueToLoginViewController(segue: UIStoryboardSegue){}
    
    // hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    @objc private func textFieldChanged() {
        if loginTF.text?.isEmpty == false {
            enterButton.isHidden = false
        } else {
            enterButton.isHidden = true
        }
    }
}
    
