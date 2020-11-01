//
//  CardView.swift
//  Preparedness
//
//  Created by Sebastian Wild on 10/25/20.
//  Copyright © 2020 CCDC. All rights reserved.
//

// Source: https://axelhodler.medium.com/creating-a-search-bar-for-swiftui-e216fe8c8c7f

import Foundation
import SwiftUI

struct ListView : View {
    
    @State private var searchText : String = ""
    let cardDatasource = ["3-5 Day Plan", "To-go Bag", "Hello World", "YOLO Swag",  "My name is Jeff"]
    
    var body: some View {
            NavigationView {
                List {
                    SearchBar(text: $searchText)
                    ForEach(self.cardDatasource, id: \.self) { cardData in
                        CardView(headerText: cardData) {
                            CardContentView()
                        }
                    }
                }.navigationBarTitle(Text("Preparedness"))
            }
    }
}

