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
        
        VStack {
            List() {
                ForEach(todoListViewModel.todosArray,id: \.self) { todo in
                    NavigationLink(destination: TodoDetailView(todo: todo)) {
                        TodoCell(todo: todo)
                            .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                                Button {
                                    todoListViewModel.deleteTodo(todo: todo )
                                } label: {
                                    Label("Complete", systemImage: "checkmark")
                                }
                                .tint(.green)
                            }
                    }
                }
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
