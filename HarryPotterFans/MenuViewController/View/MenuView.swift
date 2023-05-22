//
//  MenuViewController.swift
//  HarryPotterFans
//
//  Created by Nikita Kuznetsov on 4/17/23.
//

import UIKit

class MenuView: UIViewController {
    
    let gameView = GameView()
    var login: String?
    
    let newResults = ModelResults()

    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = self.login else {return}
         welcomeLabel.text = "Hello\(login)!"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? GameView else { return }
        dvc.login = self.login ?? "noName"
    }
    
    @IBAction func startGameButton(_ sender: Any) {
    }
    
    @IBAction func ResultGameButton(_ sender: Any) {
    }
    
    @IBAction func unwindSegueToMenuViewController(segue: UIStoryboardSegue){}
    
}
