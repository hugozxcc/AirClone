//
//  DeveloperPreview.swift
//  AirClone
//
//  Created by Fadil Nugroho on 17/08/24.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Fadil Nugroho",
            ownerImageUrl: "male-profile",
            numberofBedrooms: 4,
            numberofBathrooms: 3,
            numberofGuests: 4,
            numberofBeds: 4,
            pricePerNight: 800_000,
            latitude: -6.604055,
            longtitude: 106.838049,
            imageURLs: ["listing-1", "listing-2", "listing-3", "listing-4"],
            address: "Jl. Golf Estate Bogor Raya",
            city: "Bogor",
            state: "Jawa Barat",
            title: "Rendjana Villa",
            rating: 4.7,
            features: [.selfCheckIn, .superhost],
            amenities: [.wifi, .alarmsystem, .balcony, .laundry, .tv],
            type: .villa
        
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Fadil Nugroho",
            ownerImageUrl: "male-profile",
            numberofBedrooms: 4,
            numberofBathrooms: 3,
            numberofGuests: 4,
            numberofBeds: 4,
            pricePerNight: 920_000,
            latitude: -6.604055,
            longtitude: 106.838049,
            imageURLs: ["listing-3", "listing-2", "listing-4", "listing-2"],
            address: "Jl. Golf Estate Bogor Raya",
            city: "Bogor",
            state: "Jawa Barat",
            title: "Bogor Raya Golf House",
            rating: 4.7,
            features: [.selfCheckIn, .superhost],
            amenities: [.wifi, .alarmsystem, .balcony, .laundry, .tv],
            type: .house
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Erick Santos",
            ownerImageUrl: "male-profile",
            numberofBedrooms: 4,
            numberofBathrooms: 3,
            numberofGuests: 4,
            numberofBeds: 4,
            pricePerNight: 870_000,
            latitude: -6.604055,
            longtitude: 106.838049,
            imageURLs: ["listing-4", "listing-3", "listing-2", "listing-1"],
            address: "Jl. Golf Estate Bogor Raya",
            city: "Jakarta",
            state: "Indonesia",
            title: "Golf Estate Bogor Raya",
            rating: 4.32,
            features: [.selfCheckIn, .superhost],
            amenities: [.wifi, .alarmsystem, .pool],
            type: .apartment
        )
    ]
}
