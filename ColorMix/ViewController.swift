//
//  ViewController.swift
//  ColorMix
//
//  Created by Mackenzie Willard on 3/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.backgroundColor = .black
    }

    @IBAction func switchChange(_ sender: UISwitch) {
    }
    
    
}

