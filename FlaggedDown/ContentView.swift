//
//  ContentView.swift
//  FlaggedDown
//
//  Created by Nicholas Szeto on 5/8/21.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    @State private var showLabel = false
    
    var body: some View {
                
        VStack (alignment:.leading) {
            HStack{
                CircleImage(
                    image: Image("taxilogo1x")
                )
                .offset(x:20)
                Text("Flagged Down")
                    .offset(x:150)
                    .foregroundColor(.black)
                    .font(.title)

            }
            MapKit()
                .frame(height:500)
            
            HStack{
                VStack {
                    Button("Find me a Taxi") {
                        showLabel.toggle()
                    }
                        .contentShape(Rectangle())
                        .font(.title2)
                        .padding(20)
                    if showLabel {
                        Text("Let's get a Taxi")
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
