//
//  ContentView.swift
//  Touchdown
//
//  Created by Ahmad Maulana on 18/12/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 16)
                    .padding(.bottom)
                    .padding(.top, Constants.Size.topInsetPadding)
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        // MARK: - Slider
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                        
                        // MARK: - Category
                        CategoryGridView()
                        
                        // MARK: - Title Section
                        TitleView(title: "Helmets")
                        
                        // MARK: - Product
                        LazyVGrid(columns: Constants.Layout.gridLayout,
                                  spacing: 15,
                                  content: {
                            ForEach(Constants.Data.products) { product in
                                ProductItemView(product: product)
                            }
                        }) // LazyVGrid
                        .padding(16)
                        
                        // MARK: - Brand Section
                        TitleView(title: "Brands")
                        BrandGridView()
                        
                        // MARK: - Footer
                        FooterView()
                            .padding(.horizontal)
                    } // VStack
                }) // ScrollView
                
            } // VStack
            .background(Constants.Colors.colorBackground.ignoresSafeArea(.all, edges: .all))
        } // ZStack
        .ignoresSafeArea(.all, edges: .all)
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
