//
//  ModelData.swift
//  Landmarks
//
//  Created by Kertész Jenő Ármin on 2021. 10. 05..
//

import Foundation

var landmarks: [Landmark] = Parser().parse()

struct Parser<T: Codable> {
    
    private func getData() throws -> Data {
        guard let file = Bundle.main.url(forResource: "landmarkData.json", withExtension: nil) else {
            fatalError("Could not find landmarkData.json")
        }
        return try Data(contentsOf: file)
    }
    
    func parse() -> T {
        do {
            let data = try getData()
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch let error {
            fatalError(error.localizedDescription)
        }
    }
}
