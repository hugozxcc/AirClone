//
//  ListingCarouselView.swift
//  AirClone
//
//  Created by Fadil Nugroho on 17/08/24.
//

import SwiftUI

struct ListingCarouselView: View {
    let listing: Listing
    
    var body: some View {
        TabView {
            ForEach(listing.imageURLs, id: \.self) { image in
                Image(image)
            }
        }
        .tabViewStyle(.page)
        
    }
}

#Preview {
    ListingCarouselView(listing: DeveloperPreview.shared.listings[0])
}
