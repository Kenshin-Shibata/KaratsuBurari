//
//  ViewController.swift
//  KaratsuBurari
//
//  Created by 柴田謙真 on 2021/04/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MapButton: UIButton!
    @IBOutlet weak var HistoryButton: UIButton!
    let saddleBrown = UIColor(red:139/255, green:69/255, blue:19/255, alpha: 1.0)
    let cornSink = UIColor(red:255/255, green:248/255, blue:220/255, alpha: 0.9)
    let darkGreen = UIColor(red:47/255, green:79/255, blue:79/255, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //"地図からぶらり"ボタンの装飾¥
        MapButton.frame = CGRect(x: 200, y: 350, width: 180, height: 50)
        MapButton.backgroundColor = cornSink
        MapButton.setTitleColor(saddleBrown, for: UIControl.State.normal)
        
        MapButton.layer.borderWidth = 2  // 5
        MapButton.layer.borderColor = UIColor.gray.cgColor  // 6
 
        MapButton.layer.cornerRadius = 20  // 7
        
        //MapButton.layer.shadowOffset = CGSize(width: 3, height: 3 )  // 8
        //MapButton.layer.shadowOpacity = 0.5  // 9
        //MapButton.layer.shadowRadius = 10  // 10
        //MapButton.layer.shadowColor = UIColor.gray.cgColor  // 11
        
        HistoryButton.frame = CGRect(x: 200, y: 450, width: 180, height: 50)
        HistoryButton.backgroundColor = cornSink
        HistoryButton.setTitleColor(darkGreen, for: UIControl.State.normal)
        
        HistoryButton.layer.borderWidth = 2  // 5
        HistoryButton.layer.borderColor = UIColor.gray.cgColor  // 6
 
        HistoryButton.layer.cornerRadius = 20  // 7
        
        //"歴史からぶらり"ボタンの装飾
        
        
        
        // 表示したい画像の名前(拡張子を含む)を引数とする。
        self.view.addBackground(name: "唐津くんち絵図")
    }


}

