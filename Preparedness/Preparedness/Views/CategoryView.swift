//
//  CategoryView.swift
//  Preparedness
//
//  Created by Sebastian Wild on 11/15/20.
//  Copyright © 2020 CCDC. All rights reserved.
//

import Foundation
import SwiftUI

struct CategoryView: View {
    let category: Category
    @State var expanded: Bool = true
    
    var body: some View {
        ForEach(category.items.indices) { index in
            Section(header: sectionHeader) {
                category.items
                    .padding(.leading, 20)
            }
            // TODO: Add collapsible interaction (default API is not available on iOS)
        }
    }
    
    private var sectionHeader: some View {
        HStack {
            Text(category.name)
                .font(.categoryHeader)
            
            Spacer()
            
            // TODO: How to avoid code duplication with CardView?
            // TODO: Consider changing this to a button
            // TODO: Change Chevron orientation depending on state
            // TODO: Add collapsing animation
            Image(systemName: "chevron.right")
                .onTapGesture {
                    self.expanded.toggle()
                }
                .font(.categoryHeader)
        }
    }
}
