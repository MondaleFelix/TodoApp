//
//  TodoCell.swift
//  TodoApp
//
//  Created by Mondale on 10/6/22.
//

import SwiftUI

struct TodoCell: View {
    
    let todo: Todo
    
    var body: some View {
        HStack(spacing: 3){
            
            
        
            Image(systemName: todo.isCompleted ? "square.fill" : "square")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.blue)

            
        
            Spacer()
            
            Text(todo.description)
                .font(.title2)
                .minimumScaleFactor(0.50)
                .lineLimit(3)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            VStack {
                Text("Created: ")
                Text("Updated: 11/05/20")
            }
            .font(.system(size: 15))
            
        }.padding()
        
    }
}

struct TodoCell_Previews: PreviewProvider {
    static var previews: some View {
        TodoCell(todo: Todo(isCompleted: false, description: "Wash the dog", creationDate: Date()))
    }
}
