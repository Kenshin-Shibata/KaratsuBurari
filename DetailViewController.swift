//
//  DetailViewController.swift
//  KaratsuBurari
//
//  Created by 柴田謙真 on 2021/04/29.
//

import UIKit

class DetailViewController: UIViewController {

    var historyContent : HistoryContent!
    
    @IBOutlet weak var historyContentImage: UIImageView!
    @IBOutlet weak var historyContentJPLabel: UILabel!
    @IBOutlet weak var historyContentScroll: UIScrollView!
    @IBOutlet weak var historyContentText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        historyContentImage.image = UIImage(named: historyContent.imageName)
        historyContentJPLabel.text = historyContent.nameJP
        historyContentText.text = historyContent.textJP
    }
    

}
