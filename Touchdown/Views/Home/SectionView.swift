//
//  SectionView.swift
//  Touchdown
//
//  Created by Ahmad Maulana on 19/12/22.
//

import SwiftUI

struct SectionView: View {
    // MARK: - Properties
    @State var rotateClockwise: Bool
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(.degrees(rotateClockwise ? 90 : -90))
            Spacer()
        }
        .background(Constants.Colors.colorGrey.cornerRadius(12))
        .frame(width: 85)
        
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(Constants.Colors.colorBackground)
    }
}
