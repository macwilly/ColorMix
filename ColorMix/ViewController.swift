//
//  ViewController.swift
//  ColorMix
//
//  Created by Mackenzie Willard on 3/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var blueSlider: UISlider!
    
    var sliders: [UISlider] = []
    var toggleSwitches: [UISwitch] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlidersToArray()
        addToggleSwitchesToArray()
        updateColor()
    }
    
    
    fileprivate func addSlidersToArray() {
        sliders.append(redSlider)
        sliders.append(greenSlider)
        sliders.append(blueSlider)
    }
    
    fileprivate func addToggleSwitchesToArray() {
        toggleSwitches.append(redSwitch)
        toggleSwitches.append(greenSwitch)
        toggleSwitches.append(blueSwitch)
    }

    @IBAction func switchChange(_ sender: UISwitch) {
        updateColor()
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
    
    @IBAction func rest(_ sender: Any) {
         
        for slider in sliders {
            slider.value = 1
        }
        
        for toggleSwitch in toggleSwitches {
            toggleSwitch.isOn = false
        }
         
        updateColor()
    }
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    
}

