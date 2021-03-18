//
//  ItemModel.swift
//  SwiftUIToDoListApp
//
//  Created by ramil on 18.03.2021.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
