//
//  Landmark.swift
//  Landmarks
//
//  Created by Eric Elmoznino on 2016-01-17.
//  Copyright © 2016 Eric Elmoznino. All rights reserved.
//

import UIKit

class Landmark: NSObject {
    
    // Unique Identifier
    var id: Int
    
    // Display Name
    var shortName: String
    
    // Coordinates
    var latitude: Float
    var longitude: Float
    var altitude: Float
    
    // ENU Reference Frame Coordinates
    var east: Float = 0
    var north: Float = 0
    var up: Float = 0
    
    // Display on the screen. These are added as subviews in the
    // VRealityView
    var view: UIView!
    
    init(id: Int, shortName: String, latitude: Float, longitude: Float, altitude: Float) {
        self.id = id
        self.shortName = shortName
        self.latitude = latitude
        self.longitude = longitude
        self.altitude = altitude
    }
    
}
