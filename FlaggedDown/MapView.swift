//
//  MapView.swift
//  FlaggedDown
//
//  Created by Nicholas Szeto on 9/8/21.
//

import SwiftUI
import MapKit
import CoreLocation

struct AnnotatedItem: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}

struct MapView: View {
    //var coordinate: CLLocationCoordinate2D

    @State private var region = MKCoordinateRegion(
        center:CLLocationCoordinate2D(
            latitude: 1.24615,
            longitude: 103.61467
        ),
        span:MKCoordinateSpan(
            latitudeDelta: 0.2,
            longitudeDelta: 0.2
        )
    )
    
    private var pointsofTaxi = [
        AnnotatedItem(name:"SHA1234A", coordinate: .init(latitude: 1.24615, longitude: 103.61467)),
        AnnotatedItem(name:"SHA1234A", coordinate: .init(latitude: 1.28399, longitude: 103.62089)),
        AnnotatedItem(name:"SHA1234A", coordinate: .init(latitude: 1.26872, longitude: 103.62333))
    ]
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: pointsofTaxi) {
            item in
            MapMarker(coordinate: item.coordinate, tint: .red)
        }
            .edgesIgnoringSafeArea(.all)
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
