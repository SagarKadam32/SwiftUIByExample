//
//  Example_4_13.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI
import MapKit

struct Example_4_13: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack {
                    Text("Regular Map")
                        .font(.title)
                    Map(coordinateRegion: $region)
                        .frame(width: 400, height: 300)
                }

                VStack {
                    Text("Restrictive Map")
                        .font(.title)
                    Map(coordinateRegion: .constant(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))), interactionModes: [])
                        .frame(width: 400, height: 300)
                }
                
                VStack {
                    Text("Only Zoom Map")
                        .font(.title)
                    Map(coordinateRegion: .constant(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))), interactionModes: [.zoom])
                        .frame(width: 400, height: 300)
                }
                
                
                MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-show-a-map-view", title: "Map View")
            }
            .padding()
        }


    }
}

struct Example_4_13_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_13()
    }
}
