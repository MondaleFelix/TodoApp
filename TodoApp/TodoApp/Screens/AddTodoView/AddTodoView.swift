//
//  AddTodoView.swift
//  TodoApp
//
//  Created by Mondale on 10/7/22.
//

import SwiftUI

struct AddTodoView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var todoListViewModel : TodoListViewModel

    @State var textFieldText: String = ""
    
    var body: some View {
        
        VStack {
            ScrollView{
                TextField("Enter a todo", text: $textFieldText, axis: .vertical)
                    .disabled(false)
                    .frame(width: .infinity, height: .infinity)
                    .padding()
                    .font(.title2)

            }
                    .navigationTitle("Add a Todo")
                    .navigationBarItems(trailing:
                        Button(action: {
                        todoListViewModel.addTodo(description: textFieldText.description)
                        presentationMode.wrappedValue.dismiss()
                        
                        }) {
                            Text("Save")
                        })
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)


    }
}

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddTodoView()

        }
    }
}
