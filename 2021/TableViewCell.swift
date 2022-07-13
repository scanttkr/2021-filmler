//
//  TableViewCell.swift
//  2021
//
//  Created by can on 5.07.2022.
//  Copyright © 2022 can. All rights reserved.
//

import UIKit
protocol TableViewCellProtocol {
    func cellUzerindekiButton(indexPath:IndexPath)
}

class TableViewCell: UITableViewCell {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var FilmLabel: UILabel!
    
    var hucreProtocol:TableViewCellProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func Tıkla(_ sender: Any) {
        hucreProtocol?.cellUzerindekiButton(indexPath:  indexPath!)
    }
}
