//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Kertész Jenő Ármin on 2021. 10. 05..
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50.0, height: 50.0)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavourite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: previewlandmarks[0])
            LandmarkRow(landmark: previewlandmarks[1])
            LandmarkRow(landmark: previewlandmarks[3])
        }
        .previewLayout(.fixed(width: 300.0, height: 70.0))

    }
}
