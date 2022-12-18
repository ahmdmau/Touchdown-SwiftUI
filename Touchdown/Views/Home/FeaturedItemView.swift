//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Ahmad Maulana on 18/12/22.
//

import SwiftUI

struct FeaturedItemView: View {
    
    // MARK: - Properties
    let player: PlayerModel
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12.0)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: Constants.Data.players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Constants.Colors.colorBackground)
    }
}
