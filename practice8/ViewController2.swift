//
//  ViewController2.swift
//  practice8
//
//  Created by 竹辻篤志 on 2021/05/29.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet private weak var slider: UISlider!

    var appdelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.text = appdelegate.initialValue
        slider.value = Float(String(label.text!))!
    }
    
    @IBAction func slider2Action(_ sender: Any) {
        label.text = String(Float(slider.value))
        appdelegate.initialValue = label.text!
    }
}
