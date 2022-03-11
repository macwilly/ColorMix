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
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColor()
    }

    @IBAction func switchChange(_ sender: UISwitch) {
        updateColor()
    }
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = 1
        }
        
        if greenSwitch.isOn {
            green = 1
        }
        
        if blueSwitch.isOn {
            blue = 1
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    
}

