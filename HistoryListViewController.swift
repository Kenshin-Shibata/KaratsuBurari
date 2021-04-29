import UIKit

class HistoryListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let systemIcons = ["archivebox","trash","tray","folder","doc"]
    
    @IBOutlet weak var table:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
    }
    
    //Table Viewnのセルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return systemIcons.count
    }
    
    //各セルの要素を設定する
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath)
        
        cell.textLabel?.text = systemIcons[indexPath.row]
        cell.imageView?.image = UIImage(systemName: systemIcons[indexPath.row])
        
        return cell
    }
    
}
