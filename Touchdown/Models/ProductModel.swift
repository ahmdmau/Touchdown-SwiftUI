//
//  ProductModel.swift
//  Touchdown
//
//  Created by Ahmad Maulana on 19/12/22.
//

import Foundation
import SwiftUI

struct ProductModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var colorRgb: Color {
        return Color(red: color[0], green: color[1], blue: color[2])
    }
    var formattedPrice: String { return "$\(price)" }
}
