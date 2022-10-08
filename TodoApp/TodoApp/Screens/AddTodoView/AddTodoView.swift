//
//  AddTodoView.swift
//  TodoApp
//
//  Created by Mondale on 10/7/22.
//

import SwiftUI

struct AddTodoView: View {
    
    @State var textFieldText: String = "Wash the dog Wash the dog Wash the dog Wash the dog Wash the dog Wash the dog Wash the dog Wash the dog Wash the dog Wash the dog Wash the dog Wash the dog Wash the dog Wash the dog Wash the dog Wash the dog   "
    
    var body: some View {
        
        VStack {
            ScrollView{
                TextField("Enter a todo", text: $textFieldText, axis: .vertical)
                    .disabled(false)
                    .frame(width: .infinity, height: .infinity)
                    .padding()
                    .font(.title2)
                    .ignoresSafeArea(.keyboard, edges: .bottom)

            }
                    .ignoresSafeArea(.keyboard, edges: .bottom)
                    .navigationTitle("Add a Todo")
    //                .ignoresSafeArea(.keyboard, edges: .bottom)
                    .navigationBarItems(trailing:
                        Button(action: {
                            print("Save Button is pressed")
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
