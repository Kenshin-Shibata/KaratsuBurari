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
        historyContents.append(HistoryContent(
                                nameJP:"唐津城",
                                textJP:"唐津城は、豊臣秀吉の家臣、寺沢志摩守広高（てらざわしまのかみひろたか）によって慶長7年（1602）から7年の歳月を費やして築城されました。東西に伸びる松原が両翼を広げた　　ように見えることから、別名「舞鶴城」と呼ばれています。その城主には寺沢、大久保、松平、土井、水野、小笠原の諸氏が任ぜられています。",
                                imageName:"唐津城02"))
        historyContents.append(HistoryContent(
                                nameJP:"肥前名護屋城跡",
                                textJP:"名護屋城は豊臣秀吉が唐入り（文禄・慶長の役）の際に、その前線基地として築いた城です。規模は当時の城郭では大坂城に次ぐ広壮なものであったといわれています。周囲には城下町が築かれ、最盛期には人口10万人を超えるほど繁栄しました。徳川家康や上杉景勝、前田利家など名だたる大名の陣屋跡が残っており、特別史跡に指定されています。秀吉の死後、名護屋城は廃城となりましたが、その際に多くの建物は寺沢広高によって唐津城に移築されたと伝わっています。また、大手門は伊達政宗に与えられ、仙台城に移築されたと伝わっています",
                                imageName:"名護屋城"))
        historyContents.append(HistoryContent(
                                nameJP:"岸岳城跡",
                                textJP: "唐津市北波多と相知町の境にそびえる岸岳山頂にあり、唐津城から南へ約10kmに位置する中・近世の山城です。南北朝時代（1336～1392年）に力を蓄え、戦国時代には上松浦党の盟主として活躍した、波多氏の居城として知られています。",
                                imageName:"岸岳城"))
        historyContents.append(HistoryContent(
                                nameJP:"唐津くんち",
                                textJP: "唐津（からつ）神社の秋季例大祭。毎年１１月の２～４日の３日間にわたって開催され、「エンヤ、エンヤ」「ヨイサ、ヨイサ」のかけ声で曳山（ヤマ）が通りを駆け抜ける勇壮なお祭りです。文政２（1819）年、刀町の石崎嘉兵衛が、お伊勢参りの帰りに京都で見た祇園山笠にヒントを得て、仲間と「赤獅子」を作り奉納したのが曳山行事のはじまり。それから明治９（1876）年までに「青獅子」「亀と浦島太郎」「鯛」「鯱」など15台が作られました。残念ながら、紺屋町の黒獅子は明治中期に消滅し、現在は１４台が保管されています。曳山は県重要有形民俗文化財、曳山行事は国の重要無形民俗文化財に指定されており、平成２８年には全国３３件「山・鉾・屋台行事」のひとつとして、ユネスコ無形文化遺産に登録されました。",
                                imageName:"唐津くんち02"))
        historyContents.append(HistoryContent(
                                nameJP:"虹の松原",
                                textJP: "唐津湾の海浜に続く虹の松原（にじのまつばら）は、国の特別名勝で、三保の松原、気比の松原とともに日本三大松原のひとつに数えられる景勝地です。長さ約4.5km、幅約0.5kmにわたり、約100万本のクロマツが群生しています。その歴史は古く、１７世紀初め初代唐津藩主寺沢広高（ひろたか）が防風・防潮のため、海岸線の砂丘にクロマツを植林したのがはじまりとされています。",
                                imageName:"虹の松原"))
        historyContents.append(HistoryContent(
                                nameJP:"鏡山",
                                textJP: "標高284mの鏡山は頂上が平らなため、どの角度からも台形に見える美しい山です。『肥前風土記』や『万葉集』にも登場する松浦佐用姫の悲恋物語の舞台としても有名で、山頂の展望台からは、唐津湾や虹の松原などの絶景が一望できます。桜やつつじの名所でもあり、春になると約4kmの登山道が桜のトンネルになります。",
                                imageName:"鏡山"))
        historyContents.append(HistoryContent(
                                nameJP:"鵜殿石仏郡",
                                textJP:
                                    "大同元年(806)、空海(弘法大師)が唐(当時の中国の国名)より仏教修行をした帰りにこの地に立ち寄り、釈迦如来、阿弥陀如来、観音菩薩の三対の仏様を岩肌に刻んだのが始まりだといわれています。 現在鵜殿石仏群には、60数体の石仏が確認されおり、いずれも南北朝時代(14世紀)と室町･戦国時代(15世紀～16世紀)のものです。 中世の山岳仏教の面影を残す九州有数の石仏で、その規模は石仏の数から臼杵の石仏(大分県臼杵市)に次ぐものといえます。",
                                imageName:"鵜殿石仏郡"))
        historyContents.append(HistoryContent(
                                nameJP:"旧唐津銀行",
                                textJP: "karatsu bank",
                                imageName:"旧唐津銀行"))
        historyContents.append(HistoryContent(
                                nameJP:"呼子の捕鯨",
                                textJP: "yobuko",
                                imageName:"呼子の捕鯨"))
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
