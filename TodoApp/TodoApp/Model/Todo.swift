//
//  Todo.swift
//  TodoApp
//
//  Created by Mondale on 10/6/22.
//

import Foundation

struct Todo: Identifiable, Hashable {
    
    var id = UUID()
    var isCompleted: Bool
    var description: String
    var updatedDate: String?
    var creationDate: String
    
}

struct MockData {
    
    static let sampleData = [Todo(isCompleted: false, description: "Wash the car", creationDate: "October"),Todo(isCompleted: false, description: "Clean the room", creationDate: "October"),Todo(isCompleted: false, description: "Walk the dog", creationDate: "October")]
}
