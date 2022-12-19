//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Ahmad Maulana on 19/12/22.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: Constants.Layout.gridLayout,
                      spacing: Constants.Layout.columnSpacing,
                      pinnedViews: [], content: {
                
                Section(header: SectionView(rotateClockwise: false),
                        footer: SectionView(rotateClockwise: true)) {
                    ForEach(Constants.Data.categories) { category in
                        CategoryItemView(category: category)
                    }
                } // Section
            }) // LazyHGrid
            .frame(height: 144)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
        }) // ScrollView
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Constants.Colors.colorBackground)
    }
}
