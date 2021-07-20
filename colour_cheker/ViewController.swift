//
//  ViewController.swift
//  colour_cheker
//
//  Created by admin on 20.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorBox: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    @IBOutlet weak var redLine: UISlider!
    @IBOutlet weak var greenLine: UISlider!
    @IBOutlet weak var blueLine: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorBox.layer.cornerRadius = 15
        
        redLine.minimumTrackTintColor = .red
        greenLine.minimumTrackTintColor = .green
        blueLine.minimumTrackTintColor = .blue
        
        colorBox.backgroundColor = UIColor(
            red: CGFloat(redLine.value),
            green: CGFloat(greenLine.value),
            blue: CGFloat(blueLine.value),
            alpha: 1
            )
    
        redLabel.text = String(format: "%.2f", redLine.value)
        greenLabel.text = String(format: "%.2f", greenLine.value)
        blueLabel.text = String(format: "%.2f", blueLine.value)
        
        
    
    }

    @IBAction func rgbSlider(_ sender: UISlider) {
    
    
    
        colorBox.backgroundColor = UIColor(
            red: CGFloat(redLine.value),
            green: CGFloat(greenLine.value),
            blue: CGFloat(blueLine.value),
            alpha: 1
        )
        
        redLabel.text = String(format: "%.2f", redLine.value)
        greenLabel.text = String(format: "%.2f", greenLine.value)
        blueLabel.text = String(format: "%.2f", blueLine.value)
        
    }
    
   
}


