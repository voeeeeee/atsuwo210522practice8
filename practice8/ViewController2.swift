//
//  ViewController2.swift
//  practice8
//
//  Created by 竹辻篤志 on 2021/05/29.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var slider: UISlider!

    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSlider()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.text = String(appDelegate.sliderValue)
        slider.value = appDelegate.sliderValue
    }
    
    func setupSlider () {
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.value = appDelegate.sliderValue
    }

    @IBAction func slider2Action(_ sender: Any) {
        label.text = String(slider.value)
        appDelegate.sliderValue = slider.value
    }
}
