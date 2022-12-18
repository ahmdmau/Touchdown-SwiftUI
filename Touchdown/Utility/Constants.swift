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
        
    }
    
    struct Colors {
        static let colorBackground = Color("ColorBackground")
        static let colorGrey = Color(UIColor.systemGray4)
    }
    
    struct Size {
        static let windowTopInsetSize = UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0
        static let topInsetPadding: CGFloat = windowTopInsetSize + 16.0
    }
}
