//
//  CardView.swift
//  Preparedness
//
//  Created by Sebastian Wild on 10/25/20.
//  Copyright © 2020 CCDC. All rights reserved.
//

import Foundation
import SwiftUI

struct PlanCardView: View {
    let plan: Plan
    
    // TODO: Figure out how items should be sorted in the card view:
    // Should loose items appear before or after categories? Alpha sort???
    // Assume for now Catgories & their items show first
    
    var body: some View {
        List {
            plan.items
            
            ForEach(plan.categories.indices) { index in
                let category = plan.categories[index]
                CategoryView(category: category)
            }
        }
    }
}

struct PlanCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlanCardView(plan: .mock)
        }
        .padding()
        .background(Color.background)
        .previewLayout(.fixed(width: 400, height: 250))
    }
}
