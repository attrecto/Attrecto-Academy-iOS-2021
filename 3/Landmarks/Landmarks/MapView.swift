//
//  MapView.swift
//  Landmarks
//
//  Created by Kristof Varga on 2021. 09. 28..
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(center: .init(latitude: 34.011286, longitude: -116.166868), span: .init(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
