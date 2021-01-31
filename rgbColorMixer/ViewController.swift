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
    
    // MARK:- IBOutlets
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var coloredView: UIView!
    
    // MARK:- viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue
        
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
        let redColor = CGFloat(redSlider.value)
        let greenColor = CGFloat(greenSlider.value)
        let blueColor = CGFloat(blueSlider.value)
        
        coloredView.backgroundColor = UIColor(red: redColor,
                                              green: greenColor,
                                              blue: blueColor,
                                              alpha: 1)
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


