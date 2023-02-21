//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your Favorite local Restaurant",
                 description: "Where do you like to fill your stomach?"),
            Task(title: "Your favorite local Cafe",
                 description: "Where do you like to enjoy your caffeine boost?"),
            Task(title: "Your go-to brunch place",
                 description: "Where do you want to have breakfast today?"),
            Task(title: "Your favorite hiking spot",
                 description: "Where do you want to be one with nature?")
        ]
    }
}
