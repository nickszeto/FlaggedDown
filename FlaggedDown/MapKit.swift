//
//  MapKit.swift
//  FlaggedDown
//
//  Created by Nicholas Szeto on 6/8/21.
//

import SwiftUI
import MapKit

struct MapKit: View {
//    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion(
        center:CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span:MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
//    private func setRegion (_ coordinate: CLLocationCoordinate2D) {
//        region = MKCoordinateRegion (
//            center: coordinate,
//            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
//        )
//    }
}

struct MapKit_Previews: PreviewProvider {
    static var previews: some View {
        MapKit()
    }
}
