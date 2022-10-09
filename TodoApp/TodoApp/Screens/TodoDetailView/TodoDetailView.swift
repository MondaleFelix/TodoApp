//
//  TodoDetailView.swift
//  TodoApp
//
//  Created by Mondale on 10/7/22.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var todoListViewModel : TodoListViewModel

    var todo: Todo

    @State var isBeingEdited: Bool = false
    @State var textFieldText: String = ""
    
    var body: some View {
        
        VStack {
            ScrollView{
                TextField("Enter a todo", text: $textFieldText, axis: .vertical)
                    .disabled(!isBeingEdited ? true : false)
                    .padding()
                    .font(.title2)

            }
                    .navigationTitle("Todo Details")
                    .navigationBarItems(trailing: isBeingEdited ?
                                        

                                        Button(action: {
                                        todoListViewModel.addTodo(description: textFieldText.description)
                                        presentationMode.wrappedValue.dismiss()
                                        
                                        }) {
                                            Text("Complete")
                                        }
                                    :
                        Button(action: {
                        isBeingEdited.toggle()
                        
                        }) {
                            Text("Edit")
                        })
        }
        .onAppear() {
            textFieldText = todoListViewModel.getTodoDescription(todo: todo)
        }
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TodoDetailView(todo: Todo(isCompleted: false, description: "Wash your hands", creationDate: "Now"))

        }
    }
}
