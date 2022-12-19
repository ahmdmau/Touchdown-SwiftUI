//
//  Constants.swift
//  Touchdown
//
//  Created by Ahmad Maulana on 18/12/22.
//

import SwiftUI

struct Constants {
    // DATA
    struct Data {
        static let players: [PlayerModel] = Bundle.main.decode("player.json")
        static let categories: [Category] = Bundle.main.decode("category.json")
    }
    
    struct Colors {
        static let colorBackground = Color("ColorBackground")
        static let colorGrey = Color(UIColor.systemGray4)
    }
    
    struct Layout {
        static let columnSpacing: CGFloat = 10
        static let rowSpacing: CGFloat = 10
        static var gridLayout: [GridItem] {
            return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
        }
    }
    
    struct Size {
        static let windowTopInsetSize = UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0
        static let topInsetPadding: CGFloat = windowTopInsetSize + 16.0
    }
}
