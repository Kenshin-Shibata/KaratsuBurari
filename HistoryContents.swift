//
//  History.swift
//  KaratsuBurari
//
//  Created by 柴田謙真 on 2021/04/29.
//

import Foundation

struct HistoryContent {
    private(set) public var nameJP : String
    private(set) public var textJP : String
    private(set) public var imageName : String
    
    init(nameJP: String, textJP: String, imageName: String) {
        self.nameJP = nameJP
        self.textJP = textJP
        self.imageName = imageName
    }
}
