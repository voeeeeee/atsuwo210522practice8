//
//  ViewController2.swift
//  practice8
//
//  Created by 竹辻篤志 on 2021/05/29.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var label2: UILabel!
    @IBOutlet private weak var slider2: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSlider()
    }
    
    func setupSlider () {
        slider2.minimumValue = 0
        slider2.maximumValue = 1
        slider2.value = 0
    }

    @IBAction func slider2Action(_ sender: Any) {
        label2.text = String(Double(slider2.value))
        let vc1 = ViewController1()
        vc1.label1.text = self.label2.text
    }
}
