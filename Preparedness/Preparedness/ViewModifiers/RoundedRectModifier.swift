//
//  WithRoundedRect.swift
//  Preparedness
//
//  Created by Sebastian Wild on 10/25/20.
//  Copyright © 2020 CCDC. All rights reserved.
//

import SwiftUI

struct RoundedRectModifier: ViewModifier {
    func body(content: Content) -> some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(20.0)
            
            content
        }
    }
}
