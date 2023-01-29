//
//  ViewController.swift
//  Destini
//
//  Created by Михаил Позялов on 29.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func choiceMode(_ sender: UIButton) {
        let currentTextButton = sender.currentTitle!
        
        storyBrain.nextStory(currentTextButton)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.storyText()
        choice1Button.setTitle(storyBrain.storyTextChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.storyTextChoice2(), for: .normal)
    }
}

