//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Ahmad Maulana on 18/12/22.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - Properties
    @State private var isAnimating = false
    
    // MARK: - Body
    var body: some View {
        HStack {
            
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title2)
                    .foregroundColor(.black)
            }) // Button
            
            Spacer()
            
            LogoView()
                .opacity(isAnimating ? 1 : 0)
                .offset(x: 0, y: isAnimating ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimating.toggle()
                    }
                })
            
            Spacer()
            
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title2)
                        .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 12, height: 12, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }) // Button
            
        } // HStack
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
