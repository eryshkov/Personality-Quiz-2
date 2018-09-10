//
//  ResultsViewController.swift
//  Personality Quiz 2
//
//  Created by Evgeniy Ryshkov on 06.09.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var resultAnimal: UILabel!
    @IBOutlet weak var resultDescription: UILabel!
    
    var responses: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        calculatePersonalResult()
    }

    func calculatePersonalResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        
        let responceTypes = responses.map {$0.type}
        
        for item in responceTypes {
            switch item {
            case .dog:
                if let currentItem = frequencyOfAnswers[.dog] {
                    frequencyOfAnswers[.dog] = currentItem + 1
                }else{
                    frequencyOfAnswers[.dog] = 1
                }
            case .cat:
                if let currentItem = frequencyOfAnswers[.cat] {
                    frequencyOfAnswers[.cat] = currentItem + 1
                }else{
                    frequencyOfAnswers[.cat] = 1
                }
            case .rabbit:
                if let currentItem = frequencyOfAnswers[.rabbit] {
                    frequencyOfAnswers[.rabbit] = currentItem + 1
                }else{
                    frequencyOfAnswers[.rabbit] = 1
                }
            case .turtle:
                if let currentItem = frequencyOfAnswers[.turtle] {
                    frequencyOfAnswers[.turtle] = currentItem + 1
                }else{
                    frequencyOfAnswers[.turtle] = 1
                }
            }
        }
        
        guard var (resultAnimal, maxCount) = frequencyOfAnswers.first else {return}
        
        
        for (animal,count) in frequencyOfAnswers {
            if count > maxCount {
                maxCount = count
                resultAnimal = animal
            }
        }
        self.resultAnimal.text = "Вы \(resultAnimal.rawValue)!"
        self.resultDescription.text = "\(resultAnimal.definition)"
    }

}
