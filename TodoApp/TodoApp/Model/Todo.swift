//
//  Todo.swift
//  TodoApp
//
//  Created by Mondale on 10/6/22.
//

import Foundation

struct Todo: Hashable, Equatable {
    var id = UUID()
    
    let description: String
    let updatedDate: Date?
    let creationDate: Date
    
}
