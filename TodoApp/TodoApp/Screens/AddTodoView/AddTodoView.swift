//
//  AddTodoView.swift
//  TodoApp
//
//  Created by Mondale on 10/7/22.
//

import SwiftUI

struct AddTodoView: View {
    var body: some View {
        
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .navigationTitle("Add a Todo")
                .navigationBarItems(trailing:
                    Button(action: {
                        print("Save Button is pressed")
                    }) {
                        Text("Save")
                    })


    }
}

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
