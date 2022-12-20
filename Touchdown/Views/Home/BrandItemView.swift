//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Ahmad Maulana on 20/12/22.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - Properties
    let brand: Brand
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: Constants.Data.brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Constants.Colors.colorBackground)
    }
}
