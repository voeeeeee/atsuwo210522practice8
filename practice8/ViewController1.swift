//
//  ViewController.swift
//  practice8
//
//  Created by 竹辻篤志 on 2021/05/29.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var slider: UISlider!

    let appdelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSlider()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.text = appdelegate.initialValue
        slider.value = Float(String(label.text!))!
    }
    
    func setupSlider () {
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.value = 0
    }

    @IBAction func slider1Action(_ sender: Any) {
        label.text = String(Float(slider.value))
        appdelegate.initialValue = label.text!
    }
}

/* 質問です。
今回、一番初めに思いついた方法が、let vc2 = ViewController2() とインスタンス化し、
 sliderActionの中で、
 vc2.label2.text = label1.text
 という設定方法が思いつきましたが、
 実際作成してみると、label2がnilという警告が出てきました。
 呼び出されるタイミングが悪いためかと思い、もっと早くよばれるAppDelegateへ
 label2の初期値を入力しても、label2はnilの警告が出てきました。
 なぜnilではないはずなのに、nilとなってしまうのかがわかっていません。
 一つ前のpushにコードを記載していますので、ご確認頂きたく、宜しくお願い致します。
*/
