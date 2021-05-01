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
        historyContents.append(HistoryContent(nameJP:"唐津城", textJP: "Hellooooo", imageName:"唐津城"))
        historyContents.append(HistoryContent(nameJP:"肥前名護屋城跡", textJP: "Heyyyyy", imageName:"名護屋城"))
        historyContents.append(HistoryContent(nameJP:"岸岳城跡", textJP: "Goood", imageName:"岸岳城"))
        historyContents.append(HistoryContent(nameJP:"唐津くんち", textJP: "hoooooo", imageName:"唐津くんち"))
        historyContents.append(HistoryContent(nameJP:"虹の松原", textJP: "foooooo", imageName:"虹の松原"))
        historyContents.append(HistoryContent(nameJP:"鏡山", textJP: "yahooo", imageName:"鏡山"))
        historyContents.append(HistoryContent(nameJP:"鵜殿石仏郡",textJP: "udono", imageName:"鵜殿石仏郡"))
        historyContents.append(HistoryContent(nameJP:"旧唐津銀行", textJP: "karatsu bank", imageName:"旧唐津銀行"))
        historyContents.append(HistoryContent(nameJP:"呼子の捕鯨", textJP: "yobuko", imageName:"呼子の捕鯨"))
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailSegue" {
            if let indexPath = table.indexPathForSelectedRow {
                guard let destination = segue.destination as? DetailViewController else {
                    fatalError("Failed to prepare DetailViewController")
                }
                
                destination.historyContent = historyContents[indexPath.row]
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let indexPath = table.indexPathForSelectedRow {
            table.deselectRow(at: indexPath, animated: true)
        }
    }
    
}
