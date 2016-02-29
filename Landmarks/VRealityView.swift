//
//  VRealityView.swift
//  Landmarks
//
//  Created by Eric Elmoznino on 2016-01-18.
//  Copyright © 2016 Eric Elmoznino. All rights reserved.
//

import UIKit
import AVFoundation

class VRealityView: UIView {
    
    var cameraSession: AVCaptureSession!
    var cameraLayer: AVCaptureVideoPreviewLayer!
    
    func startCamera() {
        cameraSession = AVCaptureSession()
        cameraSession.sessionPreset = AVCaptureSessionPresetHigh
        let camera = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
        if camera == nil {
            return
        }
        do {
            let videoInput = try AVCaptureDeviceInput(device: camera)
            cameraSession.addInput(videoInput)
            cameraLayer = AVCaptureVideoPreviewLayer(session: cameraSession)
            cameraLayer.frame = self.bounds
            cameraLayer.connection.videoOrientation = AVCaptureVideoOrientation.LandscapeLeft
            cameraLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
            layer.addSublayer(cameraLayer)
            
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
                self.cameraSession.startRunning()
            })
        }
        catch {
            print("Fatal error")
        }
    }
    
    func stopCamera() {
        cameraSession.stopRunning()
        cameraLayer.removeFromSuperlayer()
        cameraSession = nil
        cameraLayer = nil
    }

}
