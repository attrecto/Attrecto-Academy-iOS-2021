//
//  ModelData.swift
//  Landmarks
//
//  Created by Kertész Jenő Ármin on 2021. 10. 05..
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = Parser().parse(resource: "landmarkData.json")
    
    var features: [Landmark] {
        landmarks.filter { $0.isFeatured }
    }
    
    var categories: [String: [Landmark]] {
        Dictionary(grouping: landmarks) { landmark in
            landmark.category.rawValue
        }
    }
}

var previewlandmarks: [Landmark] = Parser().parse(resource: "landmarkData.json")

struct Parser<T: Codable> {
    
    private func getData(resource: String) throws -> Data {
        guard let file = Bundle.main.url(forResource: resource, withExtension: nil) else {
            fatalError("Could not find \(resource)")
        }
        return try Data(contentsOf: file)
    }
    
    func parse(resource: String) -> T {
        do {
            let data = try getData(resource: resource)
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch let error {
            fatalError(error.localizedDescription)
        }
    }
}
