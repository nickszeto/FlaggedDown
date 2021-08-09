//
//  ContentView.swift
//  FlaggedDown
//
//  Created by Nicholas Szeto on 5/8/21.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
//    @EnvironmentObject var modelData: ModelData
    
//    var taxi: Taxi
    
    @State private var showLabel = false
    
    var body: some View {
        NavigationView {
            VStack (alignment:.leading) {
                    MapView()
                        .edgesIgnoringSafeArea(.all)
                VStack (alignment: .leading) {
                        HStack {
                            Text("Something goes here")
                        }
                    }
                    .padding()
                }
            .navigationTitle("Flagged Down")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("Refresh")
                    }) {
                        Label("Send", systemImage: "arrow.clockwise")
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
