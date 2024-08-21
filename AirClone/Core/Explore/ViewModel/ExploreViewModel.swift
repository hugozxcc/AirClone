//
//  ExploreViewModel.swift
//  AirClone
//
//  Created by Fadil Nugroho on 18/08/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreService
    private var listingCopy = [Listing]()
    
    init(service: ExploreService){
        self.service = service
        
        Task{ await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListing()
            self.listingCopy = listings
        } catch {
            print("DEBUG: Failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingForLocation() {
        let filteredListings = listings.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listingCopy : filteredListings
    }
}
