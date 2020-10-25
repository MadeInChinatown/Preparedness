//
//  CardView.swift
//  Preparedness
//
//  Created by Sebastian Wild on 10/25/20.
//  Copyright © 2020 CCDC. All rights reserved.
//

import Foundation
import SwiftUI

struct CardView<Content: View>: View {
    let headerText: String
    @State var expanded: Bool = true
    
    let content: () -> Content
    
    var body: some View {
        VStack {
            HStack {
                Text(headerText)
                    .font(.cardHeader)
                
                Spacer()
                
                Text("5")
                    .font(.cardHeader)
                // TODO: Consider changing this to a button
                // TODO: Change Chevron orientation depending on state
                // TODO: Add collapsing animation
                Image(systemName: "chevron.right")
                    .onTapGesture {
                        expanded.toggle()
                    }
                    .font(.cardHeader)
            }
            
            if expanded {
                content()
                    .modifier(WithRoundedRect())
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardView(headerText: "Title") {
                Text("Hello!")
            }
            
            CardView(headerText: "Title", expanded: false) {
                Text("Hello!")
            }
        }
        .padding()
        .background(Color.background)
        .previewLayout(.fixed(width: 400, height: 250))
    }
}
