//
//  CircleImage.swift
//  FlaggedDown
//
//  Created by Nicholas Szeto on 6/8/21.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius:3)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image ("taxilogo1x"))
    }
}
