//
//  Landmark.swift
//  Landmarks
//
//  Created by Kertész Jenő Ármin on 2021. 10. 05..
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Identifiable, Hashable, Codable {
    
    struct Coordinate: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinate
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}
