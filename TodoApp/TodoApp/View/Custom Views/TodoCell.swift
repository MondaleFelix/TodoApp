//
//  TodoCell.swift
//  TodoApp
//
//  Created by Mondale on 10/6/22.
//

import SwiftUI

struct TodoCell: View {
    
    var body: some View {
        HStack(alignment: .center) {
            
            Button {
                print("Button is pressed")
            } label: {
                Image(systemName: "square")
                    .resizable()
                    .frame(width: 44, height: 44)
            }
            Spacer()
            
            Text("Clean up my room")
                .font(.title2)
                .scaledToFit()
                .minimumScaleFactor(0.50)
            
            Spacer()
            VStack {
                Text("Created: 11/05/20")
                Text("Updated: 11/05/20")
            }
            .font(.caption)
            
        }.padding()
        
    }
}

struct TodoCell_Previews: PreviewProvider {
    static var previews: some View {
        TodoCell()
    }
}
