//
//  ItemView.swift
//  Preparedness
//
//  Created by Sebastian Wild on 11/15/20.
//  Copyright © 2020 CCDC. All rights reserved.
//

import Foundation
import SwiftUI

// Make these an extension on the model?
struct ItemView: View {
    let item: Item
    
    var body: some View {
        HStack {
            Checkbox(checked: .constant(item.done))
            Text(item.title)
        }
    }
}

// TODO: move somewhere else?
extension Array: View where Element == Item {
    public var body: some View {
        ForEach(indices) { index in
            ItemView(item: self[index])
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ItemView(item: Item(title: "Flashlight", done: true))
            ItemView(item: Item(title: "Crank Radio", done: false))
        }
        .padding()
        .previewLayout(.fixed(width: 400, height: 250))
    }
}
