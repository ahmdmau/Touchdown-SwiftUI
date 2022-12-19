//
//  TitleView.swift
//  Touchdown
//
//  Created by Ahmad Maulana on 19/12/22.
//

import SwiftUI

struct TitleView: View {
    // MARK: - Properties
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.title)
                .fontWeight(.heavy)
            
            Spacer()
        } // HStack
        .padding(.horizontal)
        .padding(.top, 8)
        .padding(.bottom, 8)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(Constants.Colors.colorBackground)
    }
}
