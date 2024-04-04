//
//  ContentView.swift
//  gpxquery
//
//  Created by ryought on 2024/04/04.
//

import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

struct ContentView: View {
    let cityHallLocation = Location(coordinate:CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194))
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    var body: some View {
        /*
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
         */
        Map(
            coordinateRegion: $region,
            annotationItems: [cityHallLocation]
        ) {
            location in MapMarker(coordinate: location.coordinate)
            
        }
    }
}

#Preview {
    ContentView()
}
