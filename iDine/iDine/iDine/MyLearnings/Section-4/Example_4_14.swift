//
//  Example_4_14.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI
import MapKit

struct Location: Identifiable {
    let id  = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

extension CLLocationCoordinate2D: Identifiable {
    public var id: String {
        "\(latitude)-\(longitude)"
    }
}

struct City: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct Example_4_14: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
    
    let annotations = [
        City(name: "London", coordinate: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275)),
        City(name: "Paris", coordinate: CLLocationCoordinate2D(latitude: 48.8567, longitude: 2.3508)),
        City(name: "Rome", coordinate: CLLocationCoordinate2D(latitude: 41.9, longitude: 12.5)),
        City(name: "Washington DC", coordinate: CLLocationCoordinate2D(latitude: 38.895111, longitude: -77.036667))
    ]
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 20) {
                
                VStack {
                    Text("Standard Annotation")
                        .font(.title)
                    Map(coordinateRegion: $region, annotationItems: annotations) {
                        MapPin(coordinate: $0.coordinate)
                    }
                    .frame(width: 400, height: 300)
                }
                
                VStack {
                    Text("Larger Pin Annotation")
                        .font(.title)
                    Map(coordinateRegion: $region, annotationItems: annotations) {
                        MapMarker(coordinate: $0.coordinate)
                    }
                    .frame(width: 400, height: 300)
                }
                
                
                VStack {
                    Text("Custom Annotation")
                        .font(.title)
                    Map(coordinateRegion: $region, annotationItems: annotations) {
                        MapAnnotation(coordinate: $0.coordinate) {
                            Circle()
                                .strokeBorder(.red, lineWidth: 4)
                                .frame(width: 40, height: 40)
                        }

                    }
                    .frame(width: 400, height: 300)
                }

                
                MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-show-annotations-in-a-map-view", title: "Annotations in Map View")
            }
            .padding()
        }


    }
}

struct Example_4_14_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_14()
    }
}
