//
//  MyLearnings.swift
//  iDine
//
//  Created by Sagar Kadam on 08/09/22.
//

import SwiftUI
import WebKit

struct MoreDetailsView : View {
    var linkURL: String
    var title: String
    
    var body: some View {
        Divider()
        Spacer()
        NavigationLink(destination: DisplayReadingLink(link: linkURL, title: title)) {
            Text("More on \(title)")
        }
    }
}


struct DisplayReadingLink : View {
    var link: String
    var title : String
    var body: some View {
        WebView(url: URL(string: link)!)
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
    }
    
}

struct WebView: UIViewRepresentable {
    var url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

struct SectionMainView<Content: View> : View {
    var sectionTitle = ""
    var sectionTitleDescription = ""
    @ViewBuilder var content : Content
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            SectionHeader(sectionTitle:sectionTitle, sectionTitleDescription: sectionTitleDescription)
            content
                .frame(maxWidth: .infinity,alignment: .leading)
        }
        Divider()
    }
}

struct SectionHeader : View {
    var sectionTitle = ""
    var sectionTitleDescription = ""

    var body: some View {
        VStack(spacing:0) {
            Text(sectionTitle)
                .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                .padding()
                .font(.title)
                .background(.mint)
            Text(sectionTitleDescription)
                .frame(maxWidth: .infinity, minHeight: 15, maxHeight: 25, alignment: .leading)
                .padding()
                .font(.headline.bold())
                .background(.yellow)
        }

    }
}

struct MyLearnings: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollViewReader { value in
                    
                    VStack(spacing: 20) {
                        Group {
                            SectionMainView(sectionTitle: "Working with static text", sectionTitleDescription: "Laying out text neatly") {
                                Example_1_Main()
                            }
                            
                            SectionMainView(sectionTitle: "View layout", sectionTitleDescription: "Layout sizes, priorities, and spacing") {
                                Example_2_Main()
                            }
                            
                            SectionMainView(sectionTitle: "Stacks, grids, scrollviews", sectionTitleDescription: "Position views in a structured way") {
                                Example_3_Main()
                            }
                            
                            SectionMainView(sectionTitle: "User interface controls", sectionTitleDescription: "Respond to interaction and control your program state") {
                                Example_4_Main()
                            }
                            
                            SectionMainView(sectionTitle: "Responding to events", sectionTitleDescription: "Shortcuts, rotations, and appearance") {
                                Example_5_Main()
                            }
                        }
                        
                        Group {
                            
                            SectionMainView(sectionTitle: "Taps and gestures", sectionTitleDescription: "Swipes, taps, shakes, and other input") {
                                Example_6_Main()
                            }
                            
                            SectionMainView(sectionTitle: "Advanced state", sectionTitleDescription: "Learn how to bind objects and query the environment") {
                                Example_7_Main()
                            }
                        }.id(0)
                    }
                    .onAppear() {
                        value.scrollTo(0)
                    }
                    .padding()
                    
                    
                    
                }

            }
            
            .navigationTitle("My Learning")
        }
    }
}

struct MyLearnings_Previews: PreviewProvider {
    static var previews: some View {
        MyLearnings()
    }
}
