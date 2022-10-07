//
//  TodoCell.swift
//  TodoApp
//
//  Created by Mondale on 10/6/22.
//

import SwiftUI

struct TodoCell: View {
    
    var body: some View {
        HStack(spacing: 3){
            
            Button {
                print("Button is pressed")
            } label: {
                Image(systemName: "square")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            Spacer()
            
            Text("Clean my room")
                .font(.title2)
                .minimumScaleFactor(0.50)
                .lineLimit(3)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            VStack {
                Text("Created: 11/05/20")
                Text("Updated: 11/05/20")
            }
            .font(.system(size: 15))
            
        }.padding()
        
    }
}

struct TodoCell_Previews: PreviewProvider {
    static var previews: some View {
        TodoCell()
    }
}
