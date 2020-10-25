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
    let content: Content
    let headerText: String
    
    init(
        headerText: String,
        @ViewBuilder contentBuilder: () -> Content
    ) {
        self.headerText = headerText
        self.content = contentBuilder()
    }
    
    var body: some View {
        VStack {
            HStack {
                Text(headerText)
                    .font(.cardHeader)
                
                Spacer()
                
                Text("5")
                    .font(.cardHeader)
                Image(systemName: "chevron.down")
                    .font(.cardHeader)
            }
            
            content
                .modifier(WithRoundedRect())
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(headerText: "Title") {
            Text("Hello!")
        }
        .padding()
        .background(Color.background)
        .previewLayout(.fixed(width: 400, height: 250))
    }
}
