//
//  Landmark.swift
//  Landmarks
//
//  Created by 정선민 on 2021/09/03.
//

import Foundation
import SwiftUI
import CoreLocation

// [] 를 사용하면 배열을 생성할 수 있는 듯
var landmarks: [Landmark] = load("landmarkData.json")

struct Landmark : Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordicate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
}

