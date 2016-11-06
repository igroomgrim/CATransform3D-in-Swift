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
    @IBOutlet weak var dividerLabel: UILabel!
    @IBOutlet weak var degreeLabel: UILabel!
    
    @IBOutlet weak var matrixSegmentRow1: UISegmentedControl!
    @IBOutlet weak var matrixSegmentRow2: UISegmentedControl!
    @IBOutlet weak var matrixSegmentRow3: UISegmentedControl!
    @IBOutlet weak var matrixSegmentRow4: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func matrixChanged(_ sender: UISegmentedControl) {
    }
    
    @IBAction func dividerChanged(_ sender: UISlider) {
    }
    
    @IBAction func degreeChanged(_ sender: UISlider) {
    }
}

