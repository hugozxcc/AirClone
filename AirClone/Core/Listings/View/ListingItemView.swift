//
//  ListingItemView.swift
//  AirClone
//
//  Created by Fadil Nugroho on 17/08/24.
//

import SwiftUI

struct ListingItemView: View {
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            
            ListingCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing details
            
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Aug 15 - 17")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("Rp\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("Night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                // ratings
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text(String(format: "%.1f", listing.rating))
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
