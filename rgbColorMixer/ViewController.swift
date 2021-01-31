//
//  ViewController.swift
//  rgbColorMixer
//
//  Created by Marius Malyshev on 31.01.2021.
//

import UIKit

class ViewController: UIViewController {
  
    // MARK:- Labels
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    // MARK:- Sliders
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    // MARK:- Colored View
    @IBOutlet var coloredView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillRedLabel()
        fillGreenLabel()
        fillBLueLabel()
        
        coloredView.layer.cornerRadius = 20
        
        colorMyView()
    }
    
    // MARK:- Sliders Action
    @IBAction func redSliderAction() {
        fillRedLabel()
        colorMyView()
    }
    @IBAction func greenSliderAction() {
        fillGreenLabel()
        colorMyView()
    }
    @IBAction func blueSliderAction() {
        fillBLueLabel()
        colorMyView()
    }
    
    // MARK:- Methods
    func colorMyView() {
        coloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    func fillRedLabel() {
        redLabel.text = String(format: "%.2f", redSlider.value)
    }
    func fillGreenLabel() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
    }
    func fillBLueLabel() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
}


