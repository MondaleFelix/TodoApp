//
//  TodoListView.swift
//  TodoApp
//
//  Created by Mondale on 10/6/22.
//

import SwiftUI

struct TodoListView: View {
    
    
    
    var body: some View {
        NavigationView{
            List(MockData.sampleData) { todo in
            
                TodoCell(todo: todo)
                    
            }
                .navigationTitle("Todo List 📖")
                .navigationBarItems(trailing: NavigationLink("+", destination: AddTodoView()))
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
