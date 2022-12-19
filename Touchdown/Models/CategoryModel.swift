//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Ahmad Maulana on 18/12/22.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let image: String
    let name: String
}
