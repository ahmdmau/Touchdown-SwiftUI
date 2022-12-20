//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Ahmad Maulana on 20/12/22.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: Constants.Layout.gridLayout,
                      spacing: Constants.Layout.columnSpacing,
                      content: {
                ForEach(Constants.Data.brands) { brand in
                    BrandItemView(brand: brand)
                }
            })
                .frame(height: 200)
                .padding(16)
        })
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(Constants.Colors.colorBackground)
    }
}
