//
//  ViewController.swift
//  BanderSnatchIOS
//
//  Created by Yasin AKCA on 18.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var firstChoice: UIButton!
    @IBOutlet weak var secondChoice: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func choiseMade(_ sender: UIButton) {
        storyBrain.checkChoice(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.getStoryText()
        firstChoice.setTitle(storyBrain.getChoice1(), for: .normal)
        secondChoice.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
}

