//
//  Question.swift
//  Personality Quiz 2
//
//  Created by Evgeniy Ryshkov on 10.09.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    var definition: String {
        switch self {
        case .dog:
            return "Вы окружаете себя людьми, которые вам нравятся и любите проводить время с друзьями"
        case .cat:
            return "Вам нравится делать всё самостоятельно"
        case .rabbit:
            return "Вам нравится всё мягкое, вы здоровы и полны энергии"
        case .turtle:
            return "Вы умны не по годам, любите вникать в детали. Медленный и аккуратный выигрывает"
        }
    }
}
