//
//  Basics_20_Alerts_Bootcamp.swift
//  iDine
//
//  Created by Capgemini-DA073 on 1/6/23.
//

import SwiftUI

struct Basics_20_Alerts_Bootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = .yellow
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    
    @State var alertType: MyAlerts? = nil
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            
            VStack {
                Button("Get Basic Alert!!") {
                    showAlert.toggle()
                }
                
                Button("Get Standard Alert!!") {
                    showAlert.toggle()
                }
                
                Button("B-1 Get Custom Alert!!") {
                    alertTitle = "Alert Title-1"
                    alertMessage = "This is alert message-1"
                    showAlert.toggle()
                }
                
                Button("B-2 Get Custom Alert!!") {
                    alertTitle = "Alert Title-2"
                    alertMessage = "This is alert message-2"
                    showAlert.toggle()
                }
                
                Button("B-3 Get Dynamic Alert - Success!!") {
                    alertType = .success
                    showAlert.toggle()
                }
                
                Button("B-4 Get Dynamic Alert - Error!!") {
                    alertType = .error
                    showAlert.toggle()
                }

            }
            .font(.largeTitle)
            .foregroundColor(.white)
            .alert(isPresented: $showAlert) {
                //getBasicAlert()
                //getStandardAlert()
                //getCustomAlert()
                getDynamicAlert()
            }
        }
        
    }
    
    func getBasicAlert() -> Alert {
        return Alert(title: Text("There was an error!"))
    }
    
    func getStandardAlert() -> Alert {
        return Alert(
            title: Text("Alert Title"),
            message: Text("This is optional error message"),
            primaryButton: .destructive(Text("Delete"), action: {
                // Delete Action
                backgroundColor = .red
            }),
            secondaryButton: .cancel(Text("Reset"), action: {
                backgroundColor = .yellow
            }))
    }
    
    func getCustomAlert() -> Alert {
        return Alert(
            title: Text(alertTitle),
            message: Text(alertMessage),
            primaryButton: .destructive(Text("Delete"), action: {
                // Delete Action
                backgroundColor = .red
            }),
            secondaryButton: .cancel(Text("Reset"), action: {
                backgroundColor = .yellow
            }))
    }
    
    func getDynamicAlert() -> Alert {
        switch alertType {
            case .success:
                return Alert(title: Text("This was success"), message: nil, dismissButton: .destructive(Text("OK"), action: {
                    backgroundColor = .green
                }))
        
            case .error:
                return Alert(title: Text("There was an error!"))
            
            default:
                return Alert(title: Text("Error!"))
        }
    }
}

struct Basics_20_Alerts_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_20_Alerts_Bootcamp()
    }
}
