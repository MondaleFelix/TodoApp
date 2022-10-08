//
//  TodoListViewModel.swift
//  TodoApp
//
//  Created by Mondale on 10/7/22.
//

import Foundation

class TodoListViewModel: ObservableObject {
     
    @Published var todosArray: [Todo]
    
    init() {
        todosArray = []
    }
    
    func addTodo(description: String) {
        let newTodo = Todo(isCompleted: false, description: description, creationDate: Date())
        todosArray.append(newTodo)
    }
    
}