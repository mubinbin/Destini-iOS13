//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain: StoryBrain = StoryBrain()
    var curStoryNum: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.currentTitle == storyBrain.stories[curStoryNum].choice1 {
            curStoryNum = storyBrain.stories[curStoryNum].choice1Destination
        } else if sender.currentTitle == storyBrain.stories[curStoryNum].choice2 {
            curStoryNum = storyBrain.stories[curStoryNum].choice2Destination
        }
        
        updateUI()
    }
    
    private func updateUI() {
        storyLabel.text = storyBrain.stories[curStoryNum].title
        choice1Button.setTitle(storyBrain.stories[curStoryNum].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[curStoryNum].choice2, for: .normal)
    }
}

