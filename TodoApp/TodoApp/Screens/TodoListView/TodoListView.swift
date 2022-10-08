//
//  TodoListView.swift
//  TodoApp
//
//  Created by Mondale on 10/6/22.
//

import SwiftUI

struct TodoListView: View {
    
    @EnvironmentObject var todoListViewModel : TodoListViewModel 
    
    var body: some View {
        
        List {
            ForEach(todoListViewModel.todosArray) { todo in
                TodoCell(todo: todo)
            }

        }
            .navigationTitle("Todo List 📖")
            .navigationBarItems(trailing: NavigationLink("+", destination: AddTodoView()))
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TodoListView()
        }
    }
}
