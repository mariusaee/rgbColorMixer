//
//  ViewController.swift
//  rgbColorMixer
//
//  Created by Marius Malyshev on 31.01.2021.
//

import UIKit

class SettingsViewController: UIViewController {
  
    // MARK:- IBOutlets
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var coloredView: UIView!
    
    // MARK:- viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coloredView.layer.cornerRadius = 20

        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        
        fillRedLabel()
        fillGreenLabel()
        fillBLueLabel()
                
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
    private func colorMyView() {
        coloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                              green: CGFloat(greenSlider.value),
                                              blue: CGFloat(blueSlider.value),
                                              alpha: 1)
    }
    private func fillRedLabel() {
        redLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    private func fillGreenLabel() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    private func fillBLueLabel() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    @IBAction func doneButton() {
        dismiss(animated: true)
    }
    
    
}


