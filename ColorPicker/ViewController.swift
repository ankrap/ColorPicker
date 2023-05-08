//
//  ViewController.swift
//  ColorPicker
//
//  Created by Andrey Krapivin on 08.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ColorView: UIView!
    
    @IBOutlet var RedSlider: UISlider!
    @IBOutlet var GreenSlider: UISlider!
    @IBOutlet var BlueSlider: UISlider!

    @IBOutlet var RedValueLabel: UILabel!
    @IBOutlet var GreenValueLabel: UILabel!
    @IBOutlet var BlueValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        refreshColor()
    }

    @IBAction func redValueChanged() {
        RedValueLabel.text = String(format: "%.2f", RedSlider.value)
        refreshColor()
    }
        
    @IBAction func greenValueChanged() {
        GreenValueLabel.text = String(format: "%.2f", GreenSlider.value)
        refreshColor()
    }
    
    @IBAction func BlueValueChanged() {
        BlueValueLabel.text = String(format: "%.2f", BlueSlider.value)
        refreshColor()
    }
    
    private func setupViews() {
        ColorView.layer.cornerRadius = 15.0
        
        redValueChanged()
        greenValueChanged()
        BlueValueChanged()
    }
    
    private func refreshColor()
    {
        ColorView.backgroundColor? = UIColor(
            red: CGFloat(RedSlider.value),
            green: CGFloat(GreenSlider.value),
            blue: CGFloat(BlueSlider.value),
            alpha: 1.0
        )
    }
    
}

