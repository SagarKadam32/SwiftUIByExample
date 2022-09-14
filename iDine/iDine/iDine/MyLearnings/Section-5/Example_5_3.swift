//
//  Example_5_3.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI

// Our custom view modifier to track rotation and
// call our action
struct DeviceRotationViewModifier: ViewModifier {
    
    let action: (UIDeviceOrientation) -> Void
    
    func body(content: Content) -> some View {
        content
            .onAppear()
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
                action(UIDevice.current.orientation)
            }
    }
}

// A View wrapper to make the modifier easier to use
extension View {
    func onRotate(perform action: @escaping (UIDeviceOrientation) -> Void) -> some View {
        self.modifier(DeviceRotationViewModifier(action: action))
    }
}

struct Example_5_3: View {
    @State private var orientation = UIDeviceOrientation.unknown
    
    var body: some View {
        VStack {
          
            Group {
                if orientation.isPortrait {
                    Text("Portrait")
                } else if orientation.isLandscape {
                    Text("Landscpae")
                } else if orientation.isFlat {
                    Text("Flat")
                } else {
                    Text("Unknown")
                }
            }
            .onRotate { newOrientation in
                orientation = newOrientation
            }
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-detect-device-rotation", title: "Detect device rotation")
        }

    }
}

struct Example_5_3_Previews: PreviewProvider {
    static var previews: some View {
        Example_5_3()
    }
}
