//
//  ViewController.swift
//  Destini
//
//  Created by Andrey on 12.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    //MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    //MARK: - Actions
    @IBAction func choiceMade(_ sender: UIButton) {
        
        if sender.tag == 1 {
            choice1Button.alpha = 0.7
            storyBrain.nextStory(answer: 1)
        } else {
            choice2Button.alpha = 0.7
            storyBrain.nextStory(answer: 2)
        }
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }

    @objc func updateUI() {
        storyLabel.text = storyBrain.getStoryText()
        choice1Button.setTitle(storyBrain.getButtonsText().button1, for: .normal)
        choice2Button.setTitle(storyBrain.getButtonsText().button2, for: .normal)
        
        choice1Button.alpha = 1
        choice2Button.alpha = 1
    }

}

