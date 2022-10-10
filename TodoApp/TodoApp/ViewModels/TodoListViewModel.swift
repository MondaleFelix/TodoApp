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
    

    // Removes Todo from todosArray
    func deleteTodo(todo: Todo) {
        todosArray = todosArray.filter {$0.id != todo.id}
        
    }
    
    // Adds a Todo with user inputted description and inits creationDate
    func addTodo(description: String) {
        let newTodo = Todo(isCompleted: false, description: description, creationDate: Date().formatted(date: .numeric, time: .omitted))
        todosArray.append(newTodo)
    }
    
    // Updates Todo and appends updated date to data model
    func updateTodoDescription(todo: Todo, description: String) {
        if let index = todosArray.firstIndex(where: {$0.id == todo.id}) {
            todosArray[index].description = description
            todosArray[index].updatedDate = Date().formatted(date: .numeric, time: .omitted)
        }
    }
    
    // Returns Todos description
    func getTodoDescription(todo: Todo) -> String {
        return todo.description
    }
}
