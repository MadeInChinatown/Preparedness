//
//  Models.swift
//  Preparedness
//
//  Created by Admin on 11/8/20.
//  Copyright © 2020 CCDC. All rights reserved.
//

import Foundation
struct Item {
    let title: String
    let done: Bool
}
struct Category {
    let name: String
    let items: [Item]
}
struct Plan {
    let name: String
    let items: [Item]
    let categories: [Category]
}
