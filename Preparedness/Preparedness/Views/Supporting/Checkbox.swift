//
//  Checkbox.swift
//  Preparedness
//
//  Created by Sebastian Wild on 11/15/20.
//  Copyright © 2020 CCDC. All rights reserved.
//

import Foundation
import SwiftUI

struct Checkbox: View {
    @Binding var checked: Bool
    // TODO: Make tappable
    var body: some View {
        checked ? Image(systemName: "checkmark.square") : Image(systemName: "square")
    }
}

struct Checkbox_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Checkbox(checked: .constant(false))
            Checkbox(checked: .constant(true))
        }
        .padding()
        .previewLayout(.fixed(width: 400, height: 250))
    }
}
