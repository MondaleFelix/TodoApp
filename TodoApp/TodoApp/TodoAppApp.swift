//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Mondale on 10/4/22.
//

import SwiftUI

@main
struct TodoAppApp: App {
    
    @StateObject var todoListViewModel: TodoListViewModel = TodoListViewModel()
    
    var body: some Scene {
    
        WindowGroup {
            NavigationView {
                TodoListView()
            }
            .environmentObject(todoListViewModel)
        }
    }
}
