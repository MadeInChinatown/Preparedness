//
//  Models+MockData.swift
//  Preparedness
//
//  Created by Sebastian Wild on 11/15/20.
//  Copyright © 2020 CCDC. All rights reserved.
//

//import Foundation

extension Plan {
    static var mock: Plan {
        Plan(
            name: "3-5 Day Plan",
            items: .mock,
            categories: [
                Category(name: "Essentials", items: .mockEssentials)
            ]
        )
    }
}

extension Array where Element == Item {
    static var mockEssentials: [Item] {
        [
            Item(title: "Water (1 gal per person/day", done: true),
            Item(title: "Food", done: false)
        ]
    }
    
    static var mock: [Item] {
        [
            Item(title: "Flashlight", done: true),
            Item(title: "Crank Radio", done: false)
        ]
    }
}
