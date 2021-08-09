//
//  Taxi.swift
//  FlaggedDown
//
//  Created by Nicholas Szeto on 6/8/21.
//

import Foundation
import SwiftUI
import CoreLocation


struct Taxi: Hashable, Codable, Identifiable {
    var id: Int
    var latitude: Double
    var longtitude: Double

    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longtitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longtitude: Double
    }
}
