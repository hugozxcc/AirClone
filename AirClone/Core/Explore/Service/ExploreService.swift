//
//  ExploreService.swift
//  AirClone
//
//  Created by Fadil Nugroho on 18/08/24.
//

import Foundation

class ExploreService {
    func fetchListing() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
