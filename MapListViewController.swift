//
//  MapListViewController.swift
//  KaratsuBurari
//
//  Created by 柴田謙真 on 2021/04/26.
//

import UIKit

class MapListViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var MapListTable: UITableView!
    
    let maps: [String] = [
                        "現在の唐津",
                        "1960年代の唐津",
                        "1980年代の唐津",
                        "江戸時代の唐津"
                        ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return maps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MapListTable.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = maps[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            // セルの選択を解除
            // 遷移前にセルの選択状態を解除しておかないと、Appleの審査に落ちることがあるらしい
            tableView.deselectRow(at: indexPath, animated: true)
            
            // performSegue(withIdentifier: "toTestView", sender: nil)
    
        // 別の画面に遷移
        switch indexPath.row {
        case 0:
            performSegue(withIdentifier: "toFirstMap", sender: nil)
        case 1:
            performSegue(withIdentifier: "toSecondMap", sender: nil)
        case 2:
            performSegue(withIdentifier: "toThirdMap", sender: nil)
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MapListTable.dataSource = self
        MapListTable.delegate = self
    }
    


}
