//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Ahmad Maulana on 19/12/22.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - Properties
    let product: ProductModel
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } // ZStack
            .background(product.colorRgb)
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.bold)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }) // VStack
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: Constants.Data.products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(Constants.Colors.colorBackground)
    }
}
