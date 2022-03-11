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
        colorView.backgroundColor = .black
    }

    @IBAction func switchChange(_ sender: UISwitch) {
        if sender.isOn{
            colorView.backgroundColor = .red
        } else {
            colorView.backgroundColor = .black
        }
    }
    
    
}

