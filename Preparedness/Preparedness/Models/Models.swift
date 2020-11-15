//
//  Models.swift
//  Preparedness
//
//  Created by Admin on 11/8/20.
//  Copyright © 2020 CCDC. All rights reserved.
//

import Foundation

public struct Item {
    let title: String
    let done: Bool
}

public struct Category {
    let name: String
    let items: [Item]
}

public struct Plan {
    let name: String
    let items: [Item]
    let categories: [Category]
}
