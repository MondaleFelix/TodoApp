//
//  TodoCell.swift
//  TodoApp
//
//  Created by Mondale on 10/6/22.
//

import SwiftUI

struct TodoCell: View {
    
    @EnvironmentObject var todoListViewModel : TodoListViewModel
    @State var todo: Todo
    
    var body: some View {
        HStack(spacing: 3){
            

            Button {
                todo.isCompleted.toggle()
                todoListViewModel.deleteTodo(todo: todo)
            } label: {
                Image(systemName: todo.isCompleted ? "square.fill" : "square")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)

            }.buttonStyle(PlainButtonStyle())


        
            Spacer()
            
            Text(todo.description)
                .font(.title2)
                .minimumScaleFactor(0.50)
                .lineLimit(3)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            VStack {
                Text("Created: \(todo.creationDate)")
                Text(todo.updatedDate == nil ? "" : "Updated: ")
            }
            .font(.system(size: 15))
            
        }.padding()
        
    }
}

struct TodoCell_Previews: PreviewProvider {
    static var previews: some View {
        TodoCell(todo: Todo(isCompleted: false, description: "Wash the dog", creationDate: "October"))
    }
}
