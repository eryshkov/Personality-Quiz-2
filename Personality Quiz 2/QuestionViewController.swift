//
//  QuestionViewController.swift
//  Personality Quiz 2
//
//  Created by Evgeniy Ryshkov on 06.09.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var questions: [Question] = [
        Question(text: "Какая еда вам нравится?",
                 type: .single,
                 answers: [
                    Answer(text: "Стейк", type: .dog),
                    Answer(text: "Рыба", type: .cat),
                    Answer(text: "Морковка", type: .rabbit),
                    Answer(text: "Кукуруза", type: .turtle),
            ]),
        Question(text: "Что вам нравится делать?",
                 type: .multiple,
                 answers: [
                    Answer(text: "Есть", type: .dog),
                    Answer(text: "Спать", type: .cat),
                    Answer(text: "Прыгать", type: .rabbit),
                    Answer(text: "Плавать", type: .turtle),
            ]),
        Question(text: "Насколько вам нравятся поездки на машине?",
                 type: .ranged,
                 answers: [
                    Answer(text: "Ненавижу", type: .cat),
                    Answer(text: "Немного нервничаю", type: .rabbit),
                    Answer(text: "Почти не замечаю", type: .turtle),
                    Answer(text: "Обожаю", type: .dog),
            ]),
    ]
    
    var questionIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func updateUI() {
        
    }

}
