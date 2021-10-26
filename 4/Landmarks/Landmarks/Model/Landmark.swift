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
    
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavourite: Bool
    var category: Category
    var isFeatured: Bool
    
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
