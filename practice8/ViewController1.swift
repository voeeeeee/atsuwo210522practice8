//
//  ViewController.swift
//  practice8
//
//  Created by 竹辻篤志 on 2021/05/29.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet  private weak var slider1: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSlider()
    }

    func setupSlider () {
        slider1.minimumValue = 0
        slider1.maximumValue = 1
        slider1.value = 0
    }

    @IBAction func slider1Action(_ sender: Any) {
        label1.text = String(Double(slider1.value))
        /* ここでの私のイメージでは、viewControllerをインスタンス化して
         そのラベル内の値を持ってこれば良いだけだと思い下記方法を試しました。
         ですが、label2にnilが入っていると出てしまう。
         この箇所がよばれる前に初期値を入れようと

         let vc2 = ViewController2()
         vc2.label2.text = "0.0"

         上記コードをAppDelegateへ記載しても
         nilが入っていることになり、クラッシュしてしまう。。。
         対応策を調べましたが、解決方法を見つけれなかったためこのままPRさせてください。。。
         */
        let vc2 = ViewController2()
        vc2.label2.text = self.label1.text
    }
}

