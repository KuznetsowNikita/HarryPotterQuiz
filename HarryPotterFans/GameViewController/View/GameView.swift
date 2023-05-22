//
//  GameViewController.swift
//  HarryPotterFans
//
//  Created by Nikita Kuznetsov on 4/18/23.
//

import UIKit

class GameView: UIViewController {
    
    let questionAnswer = QuestionAnswer()
    var number = 1
    var trueFalseLogic = false
    var countOfPoints = 0
    var login: String?
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var questionImage: UIImageView!
    @IBOutlet weak var goNextQuestionButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLeftUpButton: UIButton!
    @IBOutlet weak var answerRightUpButton: UIButton!
    @IBOutlet weak var answerLeftDownButton: UIButton!
    @IBOutlet weak var answerRightDownButton: UIButton!
    @IBOutlet weak var saveResultButton: UIButton!
    @IBOutlet weak var exitResulButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultImage.isHidden = true
        saveResultButton.isHidden = true
        exitResulButton.isHidden = true
        
    }
    @IBAction func saveResultButtonAction(_ sender: Any) {
        saveNewResult()
    }
    @IBAction func exitButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
    @IBAction func goNextQuestionButtonTapped(_ sender: Any) {
        goQuestion()
        number += 1
    }
    
    @IBAction func answerLeftUpButtonTapped(_ sender: Any) {
        switch number {
        case 2:
            trueLogic()
        case 3:
            falseLogic()
        case 4:
            falseLogic()
        case 5:
            falseLogic()
        case 6:
            falseLogic()
        case 7:
            falseLogic()
        case 8:
            falseLogic()
        case 9:
            trueLogic()
        case 10:
            falseLogic()
        case 11:
            falseLogic()
            
        default:
            break
        }
    }
    @IBAction func answerRightUpButtonTapped(_ sender: Any) {
        switch number {
        case 2:
            falseLogic()
        case 3:
            trueLogic()
        case 4:
            falseLogic()
        case 5:
            trueLogic()
        case 6:
            trueLogic()
        case 7:
            falseLogic()
        case 8:
            falseLogic()
        case 9:
            falseLogic()
        case 10:
            falseLogic()
        case 11:
            falseLogic()
        default:
            break
        }
    }
    @IBAction func answerLeftDownButtonTapped(_ sender: Any) {
        switch number {
        case 2:
            falseLogic()
        case 3:
            falseLogic()
        case 4:
            trueLogic()
        case 5:
            falseLogic()
        case 6:
            falseLogic()
        case 7:
            falseLogic()
        case 8:
            trueLogic()
        case 9:
            falseLogic()
        case 10:
            falseLogic()
        case 11:
            trueLogic()
            
        default:
            break
        }
    }
    @IBAction func answerRightDownButtonTapped(_ sender: Any) {
        switch number {
        case 1:
            falseLogic()
        case 2:
            falseLogic()
        case 3:
            falseLogic()
        case 5:
            falseLogic()
        case 6:
            falseLogic()
        case 7:
            trueLogic()
        case 8:
            falseLogic()
        case 9:
            falseLogic()
        case 10:
            trueLogic()
        case 11:
            falseLogic()
        default:
            break
        }
    }
    
    private func goQuestion() {
        
        if number == 11 {
            hiddenMenu()
        } else {
            switch number {
            case 1:
                questionLabel.text = questionAnswer.q1
                questionImage.image = UIImage(imageLiteralResourceName: "q1")
                answerLeftUpButton.titleLabel?.text = questionAnswer.q1a1
                answerRightUpButton.titleLabel?.text = questionAnswer.q1a2
                answerLeftDownButton.titleLabel?.text = questionAnswer.q1a3
                answerRightDownButton.titleLabel?.text = questionAnswer.q1a4
            case 2:
                questionImage.image = UIImage(imageLiteralResourceName: "q2")
                questionLabel.text = questionAnswer.q2
                answerLeftUpButton.titleLabel?.text = questionAnswer.q2a1
                answerRightUpButton.titleLabel?.text = questionAnswer.q2a2
                answerLeftDownButton.titleLabel?.text = questionAnswer.q2a3
                answerRightDownButton.titleLabel?.text = questionAnswer.q2a4
            case 3:
                questionImage.image = UIImage(imageLiteralResourceName: "q3")
                questionLabel.text = questionAnswer.q3
                answerLeftUpButton.titleLabel?.text = questionAnswer.q3a1
                answerRightUpButton.titleLabel?.text = questionAnswer.q3a2
                answerLeftDownButton.titleLabel?.text = questionAnswer.q3a3
                answerRightDownButton.titleLabel?.text = questionAnswer.q3a4
            case 4:
                questionImage.image = UIImage(imageLiteralResourceName: "q4")
                questionLabel.text = questionAnswer.q4
                answerLeftUpButton.titleLabel?.text = questionAnswer.q4a1
                answerRightUpButton.titleLabel?.text = questionAnswer.q4a2
                answerLeftDownButton.titleLabel?.text = questionAnswer.q4a3
                answerRightDownButton.titleLabel?.text = questionAnswer.q4a4
            case 5:
                questionImage.image = UIImage(imageLiteralResourceName: "q5")
                questionLabel.text = questionAnswer.q5
                answerLeftUpButton.titleLabel?.text = questionAnswer.q5a1
                answerRightUpButton.titleLabel?.text = questionAnswer.q5a2
                answerLeftDownButton.titleLabel?.text = questionAnswer.q5a3
                answerRightDownButton.titleLabel?.text = questionAnswer.q5a4
            case 6:
                questionImage.image = UIImage(imageLiteralResourceName: "q6")
                questionLabel.text = questionAnswer.q6
                answerLeftUpButton.titleLabel?.text = questionAnswer.q6a1
                answerRightUpButton.titleLabel?.text = questionAnswer.q6a2
                answerLeftDownButton.titleLabel?.text = questionAnswer.q6a3
                answerRightDownButton.titleLabel?.text = questionAnswer.q6a4
            case 7:
                questionImage.image = UIImage(imageLiteralResourceName: "q7")
                questionLabel.text = questionAnswer.q7
                answerLeftUpButton.titleLabel?.text = questionAnswer.q7a1
                answerRightUpButton.titleLabel?.text = questionAnswer.q7a2
                answerLeftDownButton.titleLabel?.text = questionAnswer.q7a3
                answerRightDownButton.titleLabel?.text = questionAnswer.q7a4
            case 8:
                questionImage.image = UIImage(imageLiteralResourceName: "q8")
                questionLabel.text = questionAnswer.q8
                answerLeftUpButton.titleLabel?.text = questionAnswer.q8a1
                answerRightUpButton.titleLabel?.text = questionAnswer.q8a2
                answerLeftDownButton.titleLabel?.text = questionAnswer.q8a3
                answerRightDownButton.titleLabel?.text = questionAnswer.q8a4
            case 9:
                questionImage.image = UIImage(imageLiteralResourceName: "q9")
                questionLabel.text = questionAnswer.q9
                answerLeftUpButton.titleLabel?.text = questionAnswer.q9a1
                answerRightUpButton.titleLabel?.text = questionAnswer.q9a2
                answerLeftDownButton.titleLabel?.text = questionAnswer.q9a3
                answerRightDownButton.titleLabel?.text = questionAnswer.q9a4
            case 10:
                questionImage.image = UIImage(imageLiteralResourceName: "q10")
                questionLabel.text = questionAnswer.q10
                answerLeftUpButton.titleLabel?.text = questionAnswer.q10a1
                answerRightUpButton.titleLabel?.text = questionAnswer.q10a2
                answerLeftDownButton.titleLabel?.text = questionAnswer.q10a3
                answerRightDownButton.titleLabel?.text = questionAnswer.q10a4
                
                
            default:
                break
            }
        }
    }
    
    private func hiddenMenu() {
        
        goNextQuestionButton.isHidden = true
        countLabel.isHidden = true
        questionImage.isHidden = true
        questionLabel.isHidden = true
        answerLeftUpButton.isHidden = true
        answerRightUpButton.isHidden = true
        answerLeftDownButton.isHidden = true
        answerRightDownButton.isHidden = true
        backButton.isHidden = true
        resultImage.isHidden = false
        saveResultButton.isHidden = false
        exitResulButton.isHidden = false
    }
    
    private func saveNewResult() {
        let newResult = ModelResults(name: login, result: String(countOfPoints))
        StorageManager.saveObject(newResult)
    }
    
    private func timeToReloadInterface() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) { [self] in
            self.goNextQuestionButton.sendActions(for: .touchUpInside)
        }
    }
    
    private func falseLogic () {
        trueFalseLogic = false
        timeToReloadInterface()
    }
    private func trueLogic() {
        trueFalseLogic = true
        countOfPoints += 1
        countLabel.text = "\(countOfPoints)/10"
        timeToReloadInterface()
        print("123")
    }
}

