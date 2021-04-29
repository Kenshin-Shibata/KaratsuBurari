import UIKit

class HistoryContentsTableViewCell: UITableViewCell {

  
    @IBOutlet weak var historyContentNameJPLabel: UILabel!
    @IBOutlet weak var historyContentImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
