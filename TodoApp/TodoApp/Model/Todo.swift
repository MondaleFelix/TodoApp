//
//  Todo.swift
//  TodoApp
//
//  Created by Mondale on 10/6/22.
//

import Foundation

struct Todo: Identifiable {
    
    var id = UUID()
    var isCompleted: Bool
    var description: String
    var updatedDate: Date?
    var creationDate: Date
    
}

struct MockData {
    
    static let sampleData = [Todo(isCompleted: false, description: "Wash the car", creationDate: Date()),Todo(isCompleted: false, description: "Clean the room", creationDate: Date()),Todo(isCompleted: false, description: "Walk the dog", creationDate: Date())]
}
