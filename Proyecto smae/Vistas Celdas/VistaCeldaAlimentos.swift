//
//  VistaCeldaAlimentosTableViewCell.swift
//  Proyecto smae
//
//  Created by Luis Humberto Martinez Echegaray on 10/11/21.
//

import UIKit

class VistaCeldaAlimentosTableViewCell: UITableViewCell {

    @IBOutlet weak var imgAlimento: UIImageView!
    @IBOutlet weak var imgGrupo: UIImageView!
    @IBOutlet weak var nombreAlimento: UILabel!
    @IBOutlet weak var piezas: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

        self.imgGrupo.layer.cornerRadius = self.imgGrupo.frame.size.height / 2
        self.imgGrupo.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
