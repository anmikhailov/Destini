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
        
        storyBrain.nextStory(answer: sender.tag)

        updateUI()
        
    }

    @objc func updateUI() {
        let buttonsTitles = storyBrain.getButtonsText()
        
        storyLabel.text = storyBrain.getStoryText()
        choice1Button.setTitle(buttonsTitles.button1, for: .normal)
        choice2Button.setTitle(buttonsTitles.button2, for: .normal)
    }

}

