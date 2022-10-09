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
    
    
    func deleteTodo(todo: Todo) {
        todosArray = todosArray.filter {$0.id != todo.id}
        
    }
    
    func addTodo(description: String) {
        let newTodo = Todo(isCompleted: false, description: description, creationDate: Date().formatted(date: .numeric, time: .omitted))
        todosArray.append(newTodo)
    }
    
    func getTodoDescription(todo: Todo) -> String {
        return todo.description
    }
}
