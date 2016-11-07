//
//  ViewController.swift
//  CATransform3D
//
//  Created by Anak Mirasing on 11/6/2559 BE.
//  Copyright © 2559 iGROOMGRiM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var matrixLabel: UILabel!
    @IBOutlet weak var axisLabel: UILabel!
    @IBOutlet weak var dividerLabel: UILabel!
    @IBOutlet weak var degreeLabel: UILabel!
    
    @IBOutlet weak var anchorXLabel: UILabel!
    @IBOutlet weak var anchorYLabel: UILabel!
    
    
    @IBOutlet weak var axisSegment: UISegmentedControl!
    
    var transform = CATransform3DIdentity
    var divider: CGFloat = 500
    var degree: Double = 0
    var x: CGFloat = 1
    var y: CGFloat = 0
    var z: CGFloat = 0
    var anchorPointX = 0.5
    var anchorPointY = 0.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.transform = transform3D()
    }

    @IBAction func dividerChanged(_ sender: UISlider) {
        divider = CGFloat(sender.value)
        dividerLabel.text = String(format: "Divider : %.2f", divider)
        
        imageView.layer.transform = transform3D()
    }
    
    @IBAction func degreeChanged(_ sender: UISlider) {
        degree = Double(sender.value)
        degreeLabel.text = String(format: "Degree : %.2f", degree)
        
        imageView.layer.transform = transform3D()
    }
    
    @IBAction func axisChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            axisLabel.text = "Rotate on x-axis"
            x = 1
            y = 0
            z = 0
        case 1:
            axisLabel.text = "Rotate on y-axis"
            x = 0
            y = 1
            z = 0
        case 2:
            axisLabel.text = "Rotate on z-axis"
            x = 0
            y = 0
            z = 1
        default:
            break
        }
        
        imageView.layer.transform = transform3D()
    }
    
    @IBAction func anchorXChanged(_ sender: UISlider) {
        anchorPointX = Double(sender.value)
        anchorXLabel.text = String(format: "Anchor point x : %.2f", anchorPointX)
        imageView.layer.transform = transform3D()
    }
    
    @IBAction func anchorYChanged(_ sender: UISlider) {
        anchorPointY = Double(sender.value)
        anchorYLabel.text = String(format: "Anchor point y : %.2f", anchorPointY)
        imageView.layer.transform = transform3D()
    }
}

extension ViewController {
    func transform3D() -> CATransform3D {
        imageView.layer.anchorPoint = CGPoint(x: anchorPointX, y: anchorPointY)
        
        transform = CATransform3DIdentity
        transform.m34 = -1.0/divider
        
        let rotateAngle = CGFloat((degree * M_PI) / 180.0)
        transform = CATransform3DRotate(transform, rotateAngle, x, y, z)
        
        print("divider : \(divider)")
        print("degree : \(degree)")
        print("axis : \(x), \(y), \(z)")
        
        return transform
    }
}

