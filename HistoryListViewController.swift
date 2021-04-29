import UIKit

class HistoryListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var historyContents: [HistoryContent] = []
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        
        loadData()
    }
    
    func loadData() {
        historyContents.append(HistoryContent(nameJP:"唐津城", imageName:"唐津城"))
        historyContents.append(HistoryContent(nameJP:"名護屋城跡", imageName:"名護屋城"))
        historyContents.append(HistoryContent(nameJP:"岸岳城跡", imageName:"岸岳城"))
        historyContents.append(HistoryContent(nameJP:"唐津くんち", imageName:"唐津くんち"))
        historyContents.append(HistoryContent(nameJP:"虹の松原", imageName:"虹の松原"))
        historyContents.append(HistoryContent(nameJP:"鏡山", imageName:"鏡山"))
        historyContents.append(HistoryContent(nameJP:"鵜殿石仏郡", imageName:"鵜殿石仏郡"))
        historyContents.append(HistoryContent(nameJP:"旧唐津銀行", imageName:"旧唐津銀行"))
    }
    //Table Viewnのセルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historyContents.count
    }
    
    //各セルの要素を設定する
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = table.dequeueReusableCell(withIdentifier: "HistoryContentsTableViewCell", for: indexPath) as? HistoryContentsTableViewCell else {
            fatalError("Dequeue failed: HistoryContentsTableViewCell.")
        }
        
        cell.historyContentNameJPLabel.text = historyContents[indexPath.row].nameJP
        cell.historyContentImage.image = UIImage(named: historyContents[indexPath.row].imageName)
        
        return cell
    }
    
}
