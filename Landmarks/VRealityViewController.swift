//
//  VRealityViewController.swift
//  Landmarks
//
//  Created by Eric Elmoznino on 2016-01-18.
//  Copyright © 2016 Eric Elmoznino. All rights reserved.
//

import UIKit

class VRealityViewController: UIViewController {
    
    // Test coordinate in ENU reference frame
    var testCordinate: [Float] = [0.0, 0.0, 100.0]
    
    // A test view to represent the landmark
    var testView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testView = UIView(frame: CGRectMake(0, 0, 20, 20))
        testView.backgroundColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
        if let vrView = view as! VRealityView! {
            vrView.startCamera()
            vrView.addSubview(testView)
        }
    }
    
}
